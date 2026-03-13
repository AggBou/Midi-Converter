import sys
import os
import shutil
import subprocess
import asyncio
from mido import MidiFile, merge_tracks, tick2second
import flet as ft
import traceback
import threading
import time
try:
    import winsound
except Exception:
    winsound = None
import json
# Use tkinter file dialogs as a stable desktop fallback instead of ft.FilePicker
try:
    import tkinter as tk
    from tkinter import filedialog
except Exception:
    tk = None
    filedialog = None

# MIDI → Motor mapping
MIDI_TO_MOTOR = {
    36: 'M1',  # Bass Drum
    42: 'M2',  # Closed Hi-Hat
    38: 'M3',  # Snare Drum
}

# Config file path and defaults
CONFIG_PATH = os.path.join(os.getcwd(), 'midi_converter_config.json')
DEFAULT_CONFIG = {
    'midi_to_motor': MIDI_TO_MOTOR,
    'velocity_scale': 1.0,
    'duration_scale': 1.0,
    'note_to_sample': {
        '36': 'sounds/kick.wav',
        '38': 'sounds/snare.wav',
        '42': 'sounds/hihat.wav'
    },
    'auto_npm': True
}


def load_config():
    try:
        if os.path.exists(CONFIG_PATH):
            with open(CONFIG_PATH, 'r', encoding='utf-8') as f:
                cfg = json.load(f)
                # merge defaults
                merged = DEFAULT_CONFIG.copy()
                merged.update(cfg)
                return merged
    except Exception:
        pass
    return DEFAULT_CONFIG.copy()


def save_config(cfg: dict):
    try:
        with open(CONFIG_PATH, 'w', encoding='utf-8') as f:
            json.dump(cfg, f, indent=2)
        return True
    except Exception:
        return False


def generate_motor_code(midi_file: MidiFile) -> str:
    """Generate Micro:bit MakeCode (TypeScript) code from a MIDI file.

    This converts MIDI tick times into milliseconds (honoring tempo changes),
    maps notes to motors, maps velocity to motor speed, and inserts pauses
    between events so the generated TypeScript follows the MIDI timing.
    """
    # Collect all notes with absolute timing in ticks (so we can express
    # waits as beat fractions independent of fixed milliseconds). We keep
    # tempo handling for completeness but compute beats from ticks.
    notes = []
    ticks_per_beat = midi_file.ticks_per_beat
    tempo = 500000  # default microseconds per beat (not needed for beats)
    abs_ticks = 0.0

    for msg in merge_tracks(midi_file.tracks):
        # msg.time is in ticks since previous message
        abs_ticks += msg.time
        if msg.type == 'set_tempo':
            tempo = msg.tempo
        if msg.type == 'note_on' and getattr(msg, 'velocity', 0) > 0:
            notes.append((abs_ticks, msg.note, msg.velocity))

    # Sort by absolute time (should already be in order, but be safe)
    notes.sort(key=lambda x: x[0])

    # Define variables at the top
    code = """let motorSpeed = 0
let initialSpeed = 0
let stopLoop = false
let beatRunning = false
let potValue = 0
beatRunning = false
let bpm = 60
radio.setGroup(161)
music.setTempo(60)
midi.useRawSerial()
enum RadioMessage {
    message1 = 49434,
    stop = 61268,
    beat1 = 8061,
    beat2 = 15548
}

function snare () {
    neZha.setMotorSpeed(neZha.MotorList.M3, motorSpeed)
    basic.pause(40)
    neZha.stopMotor(neZha.MotorList.M3)
    basic.pause(music.beat(BeatFraction.Eighth))
    neZha.setMotorSpeed(neZha.MotorList.M3, 100)
    basic.pause(41)
    neZha.stopMotor(neZha.MotorList.M3)
}
function kick () {
    neZha.setMotorSpeed(neZha.MotorList.M1, motorSpeed)
    basic.pause(100)
    neZha.stopMotor(neZha.MotorList.M1)
    basic.pause(music.beat(BeatFraction.Eighth))
    neZha.setMotorSpeed(neZha.MotorList.M1, 100)
    basic.pause(102)
    neZha.stopMotor(neZha.MotorList.M1)
}

function hi_hat () {
    neZha.setMotorSpeed(neZha.MotorList.M2, motorSpeed)
    basic.pause(40)
    neZha.stopMotor(neZha.MotorList.M2)
    basic.pause(music.beat(BeatFraction.Eighth))
    neZha.setMotorSpeed(neZha.MotorList.M2, 100)
    basic.pause(40)
    neZha.stopMotor(neZha.MotorList.M2)
}

function beat1 () {
    stopLoop = false
    while (true) {
        if (stopLoop) {
            break
        }
"""

    # Load config for mapping and scaling
    cfg = load_config()
    mapping = cfg.get('midi_to_motor', MIDI_TO_MOTOR)
    try:
        vel_scale = float(cfg.get('velocity_scale', 1.0))
    except Exception:
        vel_scale = 1.0
    try:
        dur_scale = float(cfg.get('duration_scale', 1.0))
    except Exception:
        dur_scale = 1.0

    # Build motor events using relative waits expressed in beats so that
    # at runtime the pause durations are computed from the current `bpm`
    # (for example read from a trimpot) and thus are relative to the
    # current tempo.
    prev_time = 0.0
    event_count = 0
    unmapped_notes = set()

    for time_ms, note, velocity in notes:
        # time_ms here actually holds absolute ticks (rename for clarity)
        time_ticks = time_ms

        # Resolve motor mapping allowing numeric or string keys
        motor = None
        # Try int first, then string
        if note in mapping:
            motor = mapping[note]
        elif str(note) in mapping:
            motor = mapping[str(note)]

        if not motor:
            unmapped_notes.add(note)
            continue

        # Map velocity to motor speed (0-100) applying velocity scale
        # We compute a positive motor_speed from velocity, then negate
        # when writing it into the generated `beat1` code so the
        # generated assignment values are the exact negative of the
        # MIDI-derived value.
        motor_speed = int(max(0, min(100, round((velocity / 127.0) * 100 * vel_scale))))
        # Map velocity to a short duration (ms) the motor runs and apply duration scale
        duration_ms = int(max(20, round((50 + (velocity / 127.0) * 250) * dur_scale)))
        # Time to wait before this event, expressed in beats
        wait_ticks = max(0.0, float(time_ticks - prev_time))
        wait_beats = wait_ticks / float(ticks_per_beat)
        prev_time = time_ticks

        # Convert wait in beats into a count of sixteenth notes, then
        # express as the largest BeatFraction with an integer multiplier
        # (Whole=16, Half=8, Quarter=4, Eighth=2, Sixteenth=1).
        wait_sixteenth = int(round(wait_beats * 16))
        pause_code = ""
        if wait_sixteenth > 0:
            for fname, fval in (('Whole', 16), ('Half', 8), ('Quarter', 4), ('Eighth', 2), ('Sixteenth', 1)):
                if wait_sixteenth % fval == 0:
                    mult = wait_sixteenth // fval
                    if mult == 1:
                        pause_code = f"basic.pause(music.beat(BeatFraction.{fname}))"
                    else:
                        pause_code = f"basic.pause(music.beat(BeatFraction.{fname}) * {mult})"
                    break

        # Use premade functions for known instruments (kick, hi-hat, snare)
        if motor in ('M1', 'M2', 'M3'):
            if motor == 'M1':
                func_call = 'kick()'
            elif motor == 'M2':
                func_call = 'hi_hat()'
            else:
                func_call = 'snare()'
            code += f"""
        // Note {note} → {motor} (velocity {velocity})
        basic.pause(Math.max(1, Math.round({wait_beats:.6f} * music.beat(BeatFraction.Whole))))
        motorSpeed = -{motor_speed}
        {func_call}
        basic.pause(music.beat(BeatFraction.Sixteenth))
    """
        else:
            code += f"""
        // Note {note} → {motor} (velocity {velocity})
        basic.pause(Math.max(1, Math.round({wait_beats:.6f} * music.beat(BeatFraction.Whole))))
        neZha.setMotorSpeed(neZha.MotorList.{motor}, -{motor_speed})
        basic.pause({duration_ms})
        neZha.stopMotor(neZha.MotorList.{motor})
        basic.pause(music.beat(BeatFraction.Sixteenth))
    """
        event_count += 1
    
    if event_count == 0:
         code += """
        // WARNING: No notes were mapped to motors! 
        // Please check your MIDI file notes and the Config mapping.
        basic.pause(1000)
"""
    
    if unmapped_notes:
        sorted_unmapped = sorted(list(unmapped_notes))
        code = f"// WARNING: Unmapped MIDI notes detected: {sorted_unmapped}\n" + code

    code += """
    }
}
// === Button handlers (local) ===
input.onButtonPressed(Button.A, function () {
    beat1()
})
radio.onReceivedMessage(RadioMessage.beat1, function () {
    if (beatRunning == false) {
        stopLoop = false
        beat1()
    } else {
        beat1()
    }
})
radio.onReceivedMessage(RadioMessage.beat2, function () {
    if (beatRunning == false) {
        stopLoop = false
        beat1()
    }
})
input.onButtonPressed(Button.B, function () {
    stopLoop = true
    basic.showString("Stop")
})
radio.onReceivedNumber(function (receivedBpm) {
    bpm = receivedBpm
    music.setTempo(receivedBpm)
    motorSpeed = Math.map(receivedBpm, 40, 100, -80, -100)
})
radio.onReceivedMessage(RadioMessage.stop, function () {
    if (beatRunning == true) {
        stopLoop = true
    } else {
        basic.showString("No beat")
    }
})
// === Crash/MIDI loops ===
basic.forever(function () {
    if (PlanetX_Basic.Crash(PlanetX_Basic.DigitalRJPin.J1)) {
        midi.toneOn(65.41)
        basic.pause(music.beat(BeatFraction.Sixteenth))
        midi.toneOff(65.41)
        basic.pause(music.beat(BeatFraction.Eighth))
    }
})
basic.forever(function () {
    if (PlanetX_Basic.Crash(PlanetX_Basic.DigitalRJPin.J3)) {
        midi.toneOn(92.5)
        basic.pause(music.beat(BeatFraction.Sixteenth))
        midi.toneOff(92.5)
        basic.pause(music.beat(BeatFraction.Eighth))
    }
})
basic.forever(function () {
    if (PlanetX_Basic.Crash(PlanetX_Basic.DigitalRJPin.J2)) {
        midi.toneOn(73.42)
        basic.pause(music.beat(BeatFraction.Sixteenth))
        midi.toneOff(73.42)
        basic.pause(music.beat(BeatFraction.Eighth))
    }
})
"""
    return code


class MidiConverterApp:
    def __init__(self, page: ft.Page):
        self.page = page
        self.page.title = "MIDI → Micro:bit MakeCode (TypeScript) Converter"
        # Run windowed (not fullscreen)
        self.page.window.full_screen = False
        self.page.window.width = 900
        self.page.window.height = 700
        self.current_midi_path = None
        self.output_process = None

        # UI elements
        self.instructions = ft.Text(
            "Select a MIDI file to generate Micro:bit TypeScript (MakeCode) code.",
            size=14
        )
        self.text_area = ft.TextField(
            label="Generated TypeScript code",
            multiline=True,
            min_lines=25,
            expand=True,
            value=""
        )
        self.status_label = ft.Text("", size=12, color="blue")
        
        self.load_button = ft.Button(
            "Load MIDI File",
            on_click=self.load_midi_file
        )
        self.save_button = ft.Button(
            "Save Generated Code",
            on_click=self.save_code
        )
        self.compile_button = ft.Button(
            "Compile to HEX",
            on_click=self.compile_to_hex
        )
        self.deploy_button = ft.Button(
            "Deploy to micro:bit",
            on_click=self.deploy_to_microbit
        )
        self.deploy_button = ft.Button(
            "Deploy to micro:bit",
            on_click=self.deploy_to_microbit
        )
        # Play using samples from sounds/ folder (default)
        self.play_button = ft.Button("Play MIDI (samples)", on_click=self.play_midi_using_sounds)
        self.loop_checkbox = ft.Checkbox(label="Loop playback", value=False)
        self.playing = False
        self.stop_playback = False

        # We'll use a desktop file dialog fallback (tkinter) instead of
        # ft.FilePicker because some flet builds don't include that control.
        # Allow window resizing / maximize (square button)
        try:
            self.page.window_resizable = True
        except Exception:
            pass

        # Build layout
        # Build layout
        button_row = ft.Row(
            [self.load_button, self.save_button, self.compile_button, self.deploy_button, self.loop_checkbox, self.play_button],
            spacing=10
        )
        
        self.page.add(
            self.instructions,
            button_row,
            self.status_label,
            ft.Divider(),
            self.text_area
        )

    def show_alert(self, title: str, message: str, alert_type: str = "info"):
        """Show an alert dialog"""
        dlg = ft.AlertDialog(
            title=ft.Text(title),
            content=ft.Text(message),
            actions=[ft.TextButton("OK")],
        )
        self.page.dialog = dlg
        dlg.open = True
        self.page.update()

    def on_file_picked(self, e: ft.FilePickerResultEvent):
        """Handle MIDI file selection"""
        if e.files:
            path = e.files[0].path
            self.status_label.value = f"File picked: {path}"
            self.page.update()
            try:
                print(f"[DEBUG] on_file_picked -> {path}")
            except Exception:
                pass
            self.load_midi_file_path(path)

    def on_save_file_picked(self, e: ft.FilePickerResultEvent):
        """Handle save file selection"""
        if e.files:
            self.save_code_to_path(e.files[0].path)

    def load_midi_file(self, e):
        """Open file picker for MIDI file (desktop fallback).

        If tkinter is available, use it to show an open-file dialog.
        """
        # Prefer flet page pick API if present
        pick_method = getattr(self.page, "pick_files", None)
        if callable(pick_method):
            try:
                asyncio.create_task(self.page.pick_files(allowed_extensions=["mid", "midi"]))
                return
            except Exception:
                pass

        if filedialog:
            try:
                root = tk.Tk()
                # Ensure the dialog opens in front of the app window without showing the empty root
                root.withdraw()
                root.attributes('-topmost', True)
                # Note: We do NOT call deiconify() here to avoid the weird popup
                root.lift()
                root.focus_force()
                path = filedialog.askopenfilename(parent=root, filetypes=[("MIDI files", "*.mid *.midi")])
                root.destroy()
                if path:
                    self.load_midi_file_path(path)
                return
            except Exception as ex:
                print("Tkinter file dialog failed:", ex)

        # Last resort: ask the user to type a path (synchronous)
        self.show_alert("Info", "Could not open file dialog. Please drag the MIDI file into the application folder and run again.")

    def load_midi_file_path(self, midi_path: str):
        """Process selected MIDI file"""
        try:
            self.status_label.value = f"Processing: {midi_path}"
            self.page.update()
            midi = MidiFile(midi_path)
            generated_code = generate_motor_code(midi)
            self.text_area.value = generated_code
            self.status_label.value = f"Loaded: {midi_path}"
            self.current_midi_path = midi_path
            # Enable or disable playback depending on whether we have samples
            try:
                if self._has_samples_for_midi(midi):
                    self.play_button.disabled = False
                    self.status_label.value += " — samples available for playback"
                else:
                    self.play_button.disabled = True
                    self.status_label.value += " — no matching samples in sounds/"
            except Exception:
                # On unexpected error leave the button enabled so user can still try
                self.play_button.disabled = False

            self.page.update()
        except Exception as e:
            tb = traceback.format_exc()
            print(tb)
            self.show_alert("Error", f"Failed to process MIDI file:\n{e}\nSee console for details.")

    def save_code(self, e):
        """Save the generated TypeScript code"""
        code = self.text_area.value
        if not code or not code.strip():
            self.show_alert("Warning", "No code to save!")
            return

        # Use tkinter save dialog if available
        if filedialog:
            try:
                root = tk.Tk()
                root.withdraw()
                root.attributes('-topmost', True)
                # Keep root hidden
                root.lift()
                root.focus_force()
                save_path = filedialog.asksaveasfilename(parent=root, defaultextension='.ts', filetypes=[('TypeScript', '*.ts')])
                root.destroy()
                if save_path:
                    self.save_code_to_path(save_path)
                return
            except Exception as ex:
                print('Save dialog failed:', ex)

        # Fallback: save to main.ts in current directory
        save_path = os.path.join(os.getcwd(), 'main.ts')
        self.save_code_to_path(save_path)


    # Removed async save helper; using desktop save dialog fallback instead.

    def save_code_to_path(self, save_path: str):
        """Save code to specified path"""
        code = self.text_area.value
        try:
            with open(save_path, "w", encoding="utf-8") as f:
                f.write(code)
            self.status_label.value = f"Saved to: {save_path}"
            self.page.update()
        except Exception as e:
            self.show_alert("Error", f"Failed to save file:\n{e}")

    def _find_sample_for_note(self, note: int) -> str | None:
        """Return a filesystem path to a sample for the given MIDI note, or None."""
        cfg = load_config()
        mapping = cfg.get('note_to_sample', {}) or {}

        # Try explicit mapping (string keys expected in config)
        candidate = None
        if str(note) in mapping:
            candidate = mapping[str(note)]
        elif note in mapping:
            candidate = mapping[note]

        # If candidate was provided, resolve relative paths
        if candidate:
            if not os.path.isabs(candidate):
                cand_path = os.path.join(os.getcwd(), candidate)
            else:
                cand_path = candidate
            if os.path.exists(cand_path):
                return cand_path

        # Try common filename patterns in sounds/ directory
        sounds_dir = os.path.join(os.getcwd(), 'sounds')
        for ext in ('.wav',):
            candidate_path = os.path.join(sounds_dir, f"{note}{ext}")
            if os.path.exists(candidate_path):
                return candidate_path

        # As a last resort, look up default mapping in DEFAULT_CONFIG (already relative)
        try:
            default_map = DEFAULT_CONFIG.get('note_to_sample', {})
            if str(note) in default_map:
                p = default_map[str(note)]
                p_abs = p if os.path.isabs(p) else os.path.join(os.getcwd(), p)
                if os.path.exists(p_abs):
                    return p_abs
        except Exception:
            pass

        return None

    def _play_sample(self, path: str) -> None:
        """Play a single sample file asynchronously (best-effort)."""
        if not path or not os.path.exists(path):
            return
        # Prefer playsound3 (or playsound) if available; run in thread to avoid blocking
        try:
            try:
                from playsound3 import playsound as _playsound
            except Exception:
                from playsound import playsound as _playsound
            threading.Thread(target=_playsound, args=(path,), daemon=True).start()
            return
        except Exception:
            pass

        # Fallback: winsound on Windows (async)
        try:
            if winsound is not None:
                winsound.PlaySound(path, winsound.SND_FILENAME | winsound.SND_ASYNC)
                return
        except Exception:
            pass

        # Fallback: try simpleaudio if available
        try:
            import simpleaudio as sa
            wave_obj = sa.WaveObject.from_wave_file(path)
            wave_obj.play()
            return
        except Exception:
            pass

        # If nothing else, attempt a blocking play via system call for WAV on Windows
        try:
            if os.name == 'nt':
                import subprocess
                subprocess.Popen(['powershell', '-c', f'(New-Object Media.SoundPlayer "{path}").PlaySync()'])
        except Exception:
            pass

    def _has_samples_for_midi(self, midi: MidiFile) -> bool:
        """Return True if at least one note in the MIDI has a corresponding sample."""
        try:
            for msg in merge_tracks(midi.tracks):
                if msg.type == 'note_on' and getattr(msg, 'velocity', 0) > 0:
                    if self._find_sample_for_note(msg.note):
                        return True
        except Exception:
            pass
        return False

    def _play_midi_thread(self, midi_path: str):
        """Thread target: play MIDI by triggering samples from sounds/ folder."""
        try:
            midi = MidiFile(midi_path)
        except Exception as e:
            self.status_label.value = f"Failed to open MIDI: {e}"
            self.page.update()
            self.play_button.disabled = False
            self.page.update()
            return

        ticks_per_beat = midi.ticks_per_beat
        tempo = 500000

        self.status_label.value = f"Playing: {os.path.basename(midi_path)}"
        self.page.update()

        # Loop playback while loop checkbox is enabled and stop_playback is False
        try:
            while True:
                for msg in merge_tracks(midi.tracks):
                    if self.stop_playback:
                        break

                    # Convert delta ticks to seconds using current tempo
                    try:
                        dt = tick2second(msg.time, ticks_per_beat, tempo)
                    except Exception:
                        dt = 0
                    if dt > 0:
                        time.sleep(dt)

                    if msg.type == 'set_tempo':
                        tempo = msg.tempo
                        continue

                    if msg.type == 'note_on' and getattr(msg, 'velocity', 0) > 0:
                        sample = self._find_sample_for_note(msg.note)
                        if sample:
                            try:
                                self._play_sample(sample)
                            except Exception:
                                pass

                if self.stop_playback:
                    break

                # If loop checkbox is not checked, finish after one pass
                if not getattr(self, 'loop_checkbox', None) or not self.loop_checkbox.value:
                    break

                # Small gap between loops
                time.sleep(0.01)
        finally:
            self.stop_playback = False
            self.playing = False
            try:
                self.play_button.text = "Play MIDI (samples)"
                self.play_button.disabled = False
                self.page.update()
            except Exception:
                pass

    def play_midi_using_sounds(self, e):
        """UI handler: start playing current MIDI using samples in sounds/"""
        if not self.current_midi_path:
            self.show_alert("Info", "No MIDI file loaded. Please load a file first.")
            return
        # If already playing, request stop and return (thread will re-enable UI)
        if self.playing:
            self.stop_playback = True
            try:
                self.play_button.text = "Play MIDI (samples)"
                self.page.update()
            except Exception:
                pass
            return

        # Double-check samples exist for the loaded MIDI before starting
        try:
            midi = MidiFile(self.current_midi_path)
            if not self._has_samples_for_midi(midi):
                self.show_alert("Info", "No matching samples found in sounds/ for this MIDI.")
                return
        except Exception:
            pass

        # Start playback: disable toggles to prevent double-start
        self.play_button.disabled = True
        self.stop_playback = False
        self.playing = True
        try:
            self.play_button.text = "Stop Playback"
            self.page.update()
        except Exception:
            pass

        t = threading.Thread(target=self._play_midi_thread, args=(self.current_midi_path,), daemon=True)
        t.start()

    async def run_mkc_async(self, save_dir: str, args: list, operation: str):
        """Run mkc asynchronously and show output"""
        # Create output dialog
        output_text = ft.TextField(
            multiline=True,
            min_lines=20,
            read_only=True,
            expand=True,
            text_size=12,
            value="Starting...\n"
        )
        
        close_button = ft.Button("Close", on_click=lambda e: dlg.on_result(True))
        
        dlg = ft.AlertDialog(
            title=ft.Text(f"mkc output ({operation})"),
            content=ft.Container(
                content=output_text,
                width=600,
                height=400
            ),
            actions=[close_button],
        )
        
        self.page.dialog = dlg
        dlg.open = True
        self.page.update()

        # Disable buttons
        self.deploy_button.disabled = True
        self.compile_button.disabled = True
        self.page.update()

        # --- Check 1: NPM & PXT Modules ---
        # Provide a helpful hint if pxt modules are missing
        if not os.path.isdir(os.path.join(save_dir, 'pxt_modules')):
            output_text.value += "Warning: pxt_modules directory not found in project.\n"
            self.page.update()

            cfg = load_config()
            auto_npm = bool(cfg.get('auto_npm', True))

            # Try opening the project folder in Explorer so any user can inspect it
            try:
                if os.name == 'nt':
                     os.startfile(save_dir)
            except Exception:
                pass

            if not auto_npm:
                output_text.value += "Auto npm install is disabled in config; skipping auto-install.\n\n"
                self.page.update()
            else:
                output_text.value += "Attempting to auto-install pxt_modules via `npm install`...\n"
                self.page.update()
                
                npm_cmd = shutil.which('npm')
                pkg_json = os.path.join(save_dir, 'package.json')
                
                if not npm_cmd:
                     output_text.value += "Error: `npm` not found. Please install Node.js.\n\n"
                     self.page.update()
                elif not os.path.exists(pkg_json):
                     output_text.value += "Error: `package.json` not found in project folder.\n\n"
                     self.page.update()
                else:
                    output_text.value += "Running `npm install`...\n"
                    self.page.update()
                    try:
                        # Explicitly pass environment
                        env = os.environ.copy()
                        proc_npm = await asyncio.create_subprocess_exec(
                            npm_cmd, 'install',
                            cwd=save_dir,
                            env=env,
                            stdout=asyncio.subprocess.PIPE,
                            stderr=asyncio.subprocess.STDOUT
                        )
                        # Stream npm output
                        while True:
                            line = await proc_npm.stdout.readline()
                            if not line:
                                break
                            output_text.value += line.decode(errors='ignore')
                            self.page.update()
                        
                        npm_rc = await proc_npm.wait()
                        output_text.value += f"\n`npm install` finished with code: {npm_rc}\n\n"
                        self.page.update()
                    except Exception as e:
                        output_text.value += f"Error running npm install: {e}\nIs Node.js and npm installed?\n\n"
                        self.page.update()

        # --- Check 2: MKC Availability ---
        mkc_path = shutil.which("mkc")
        if not mkc_path:
            # Try to help user find it if installed via npm globally but not in PATH
            try:
                npm_bin = subprocess.run(["npm", "bin", "-g"], capture_output=True, text=True)
                bin_dir = npm_bin.stdout.strip()
                if bin_dir:
                    cand = os.path.join(bin_dir, "mkc")
                    cand_cmd = os.path.join(bin_dir, "mkc.cmd")
                    if os.path.exists(cand_cmd):
                        mkc_path = cand_cmd
                    elif os.path.exists(cand):
                        mkc_path = cand
            except Exception:
                pass

        if not mkc_path:
            output_text.value += "Error: `mkc` (MakeCode Command Line) not found.\n"
            output_text.value += "Please install it by running: npm install -g mkc\n"
            output_text.value += "Then restart this application."
            self.page.update()
            
            self.deploy_button.disabled = False
            self.compile_button.disabled = False
            self.page.update()
            return

        # --- Run MKC ---
        try:
            cmd = [mkc_path] + args
            output_text.value += f"Using mkc at: {mkc_path}\n"
            output_text.value += f"Running: {' '.join(cmd)}\n\n"
            self.page.update()

            # Async subprocess for non-blocking UI - pass env
            env = os.environ.copy()
            proc = await asyncio.create_subprocess_exec(
                *cmd,
                stdout=asyncio.subprocess.PIPE,
                stderr=asyncio.subprocess.STDOUT,
                cwd=save_dir,
                env=env
            )
            
            # Read output line-by-line
            while True:
                line = await proc.stdout.readline()
                if not line:
                    break
                # Update text area with new line
                try:
                    line_str = line.decode(errors='ignore')
                except:
                    line_str = str(line)
                
                output_text.value += line_str
                self.page.update()
            
            returncode = await proc.wait()
            output_text.value += f"\n\nProcess finished with code: {returncode}\n"
            
            if returncode == 0:
                if operation == "compile":
                    hex_path = os.path.join(save_dir, "built", "binary.hex")
                    if os.path.exists(hex_path):
                        output_text.value += f"\nHex file: {hex_path}"
                    self.status_label.value = f"Compiled successfully"
                else:
                    self.status_label.value = f"Deployed successfully"
            else:
                self.status_label.value = f"{operation.capitalize()} failed (rc={returncode})"
            
            self.page.update()
        except Exception as e:
            output_text.value += f"\nError running mkc: {e}"
            self.page.update()
        finally:
            self.deploy_button.disabled = False
            self.compile_button.disabled = False
            self.page.update()

    def compile_to_hex(self, e):
        """Save and compile TypeScript to HEX"""
        code = self.text_area.value
        if not code or not code.strip():
            self.show_alert("Warning", "No code to compile!")
            return

        # Always save to main.ts in current directory to ensure mkc finds pxt.json
        save_dir = os.getcwd()
        save_path = os.path.join(save_dir, 'main.ts')
        
        try:
            with open(save_path, "w", encoding="utf-8") as f:
                f.write(code)
            self.status_label.value = f"Saved to: {save_path}"
            self.page.update()
        except Exception as ex:
            self.show_alert("Error", f"Failed to save file:\n{ex}")
            return

        # Run mkc async (explicit build)
        asyncio.create_task(self.run_mkc_async(save_dir, ["build"], "compile"))

    def deploy_to_microbit(self, e):
        """Save and deploy TypeScript to micro:bit"""
        code = self.text_area.value
        if not code or not code.strip():
            self.show_alert("Warning", "No code to deploy!")
            return

        save_dir = os.getcwd()
        save_path = os.path.join(save_dir, "main.ts")
        
        try:
            with open(save_path, "w", encoding="utf-8") as f:
                f.write(code)
            self.status_label.value = f"Saved to: {save_path}"
            self.page.update()
        except Exception as ex:
            self.show_alert("Error", f"Failed to save file:\n{ex}")
            return

        # Run mkc -d async (explicit build + deploy)
        asyncio.create_task(self.run_mkc_async(save_dir, ["build", "-d"], "deploy")) 


if __name__ == "__main__":
    def main(page: ft.Page):
        app = MidiConverterApp(page)
    
    ft.run(main)
