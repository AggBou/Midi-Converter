import warnings
try:
    from requests.exceptions import RequestsDependencyWarning
    warnings.filterwarnings("ignore", category=RequestsDependencyWarning)
except Exception:
    try:
        from requests.packages.urllib3.exceptions import DependencyWarning
        warnings.filterwarnings("ignore", category=DependencyWarning)
    except Exception:
        pass

import subprocess
import sys
import os
import glob
import shutil
import io
from music21 import converter, instrument, pitch

# Optional GUI dependencies are imported lazily so CLI still works without flet
try:
    import flet as ft
except Exception:
    ft = None

def remap_to_drum_pitch(original_midi: int) -> int:
    if original_midi >= 76:
        return 49   # Crash Cymbal 1
    elif original_midi >= 71:
        return 51   # Ride Cymbal 1
    elif original_midi >= 66:
        return 46   # Open Hi-Hat
    elif original_midi >= 61:
        return 42   # Closed Hi-Hat
    elif original_midi >= 55:
        return 45   # High Floor Tom / High Tom
    elif original_midi >= 50:
        return 38   # Acoustic Snare
    elif original_midi >= 45:
        return 43   # Low Floor Tom
    else:
        return 36   # Bass Drum 1


def image_to_drum_midi(image_path: str, output_midi: str = "drum_output.mid") -> str:
    # Determine output directory for oemer: if `output_midi` is a path or filename,
    # use its directory; otherwise use current working directory.
    if os.path.isabs(output_midi) and os.path.isdir(output_midi):
        output_dir = os.path.abspath(output_midi)
    else:
        output_dir = os.path.abspath(os.path.dirname(output_midi)) if os.path.dirname(output_midi) else os.getcwd()

    # If an 'oemer' executable is available and works (user-provided command works), prefer it.
    oemer_exe = shutil.which('oemer')
    if oemer_exe:
        # Run plain 'oemer' (no full path) so the system-installed oemer is used
        # instead of a venv wrapper. Remove venv Scripts from PATH for this call.
        cmd = ['oemer', image_path, '-o', output_dir]
        env = os.environ.copy()
        try:
            venv_scripts = os.path.dirname(sys.executable)
            path_entries = env.get('PATH', '').split(os.pathsep)
            filtered = [p for p in path_entries if os.path.abspath(p) != os.path.abspath(venv_scripts)]
            env['PATH'] = os.pathsep.join(filtered)
        except Exception:
            pass
        print("Running:", " ".join(cmd))
        result = subprocess.run(cmd, capture_output=True, text=True, env=env)
        stderr = result.stderr or ""
        # Filter out known non-fatal onnxruntime CUDA provider warning
        filtered_lines = []
        for line in stderr.splitlines():
            if "Specified provider 'CUDAExecutionProvider' is not in available provider names" in line:
                continue
            if "UserWarning" in line and "onnxruntime" in line:
                # generic onnxruntime user warnings can be ignored
                continue
            filtered_lines.append(line)

        if result.returncode != 0 and filtered_lines:
            print("oemer executable failed:", "\n".join(filtered_lines))
            return
    else:
        # Prefer calling the oemer package programmatically to avoid requiring an external exe.
        try:
            import oemer.ete as oemer_ete
            old_argv = sys.argv[:]
            sys.argv = ['oemer', image_path, '-o', output_dir]
            try:
                oemer_ete.main()
            finally:
                sys.argv = old_argv
        except Exception:
            # Fallback: try running module via subprocess (python -m oemer.ete)
            cmd = [sys.executable, "-m", "oemer.ete", image_path, "-o", output_dir]
            print("Falling back to subprocess:", " ".join(cmd))
            result = subprocess.run(cmd, capture_output=True, text=True)
            if result.returncode != 0:
                print("oemer (module) failed:", result.stderr)
                return
    if result.returncode != 0:
        print("Oemer failed:", result.stderr)
        return

    base_name = os.path.splitext(os.path.basename(image_path))[0]
    # Look for the generated MusicXML in the output directory
    possible_xml = os.path.join(output_dir, f"{base_name}.musicxml")

    if os.path.exists(possible_xml):
        xml_file = possible_xml
    else:
        xml_candidates = glob.glob(os.path.join(output_dir, "*.musicxml")) + glob.glob(os.path.join(output_dir, "*.xml"))
        if not xml_candidates:
            print(f"No MusicXML found in {output_dir}!")
            return
        xml_file = max(xml_candidates, key=os.path.getmtime)
    
    print("Loading musicxml...", xml_file)
    score = converter.parse(xml_file)

    print("Remapping..")
    
    for part in score.parts:
        part.insert(0, instrument.UnpitchedPercussion())

    for element in score.recurse():
        if element.isNote:
            if element.pitch is not None:
                drum_note = remap_to_drum_pitch(element.pitch.midi)
                element.pitch = pitch.Pitch(drum_note)
        elif element.isChord:
            for n in element.notes:
                if n.pitch is not None:
                    drum_note = remap_to_drum_pitch(n.pitch.midi)
                    n.pitch = pitch.Pitch(drum_note)

    # Ensure output filename is a full path
    if os.path.isabs(output_midi):
        midi_path = output_midi
    else:
        midi_path = os.path.join(output_dir, os.path.basename(output_midi))

    print("Saving drum MIDI to:", midi_path) # channel 10
    # Ensure output directory exists
    os.makedirs(os.path.dirname(midi_path), exist_ok=True)
    score.write('midi', fp=midi_path)
    print("Done!")
    return midi_path


def launch_gui():
    if ft is None:
        print("Flet is not installed. Install with: pip install flet")
        return

    def main(page: ft.Page):
        page.title = "Drum Sheet → MIDI"
        page.padding = 20
        page.vertical_alignment = "start"

        tf_image = ft.TextField(label="Image file", width=600, read_only=True)

        # Use a stable desktop file dialog (tkinter) instead of creating a FilePicker control,
        # which can cause "Unknown control: FilePicker" in some Flet builds.
        def choose_with_tk(e):
            try:
                import tkinter as tk
                from tkinter import filedialog
            except Exception:
                page.snack_bar = ft.SnackBar(ft.Text("tkinter not available; install it or use CLI"))
                page.snack_bar.open = True
                page.update()
                return
            root = tk.Tk()
            root.withdraw()
            try:
                root.attributes('-topmost', True)
            except Exception:
                pass
            try:
                root.lift()
                root.focus_force()
            except Exception:
                pass
            path = filedialog.askopenfilename(parent=root, filetypes=[("Image files", "*.png;*.jpg;*.jpeg;*.bmp;*.gif"), ("All files", "*.*")])
            root.destroy()
            if path:
                tf_image.value = path
                tf_image.update()

        btn_pick = ft.ElevatedButton("Choose image", on_click=choose_with_tk)

        tf_output = ft.TextField(label="Output MIDI filename", value="drum_output.mid", width=400)
        tf_oemer = ft.TextField(label="oemer executable or directory (optional)", width=600)

        log_field = ft.TextField(label="Log", multiline=True, read_only=True, expand=True)

        def run_click(e: ft.ControlEvent):
            img = tf_image.value
            out = tf_output.value or "drum_output.mid"
            oemer_input = tf_oemer.value.strip()

            if not img:
                page.snack_bar = ft.SnackBar(ft.Text("Please choose an image first"))
                page.snack_bar.open = True
                page.update()
                return

            if oemer_input:
                if os.path.isfile(oemer_input):
                    dirpath = os.path.dirname(oemer_input)
                else:
                    dirpath = oemer_input
                os.environ["PATH"] = dirpath + os.pathsep + os.environ.get("PATH", "")

            old_stdout, old_stderr = sys.stdout, sys.stderr
            sio = io.StringIO()
            sys.stdout = sio
            sys.stderr = sio

            try:
                midi_path = image_to_drum_midi(img, out)
            except Exception as ex:
                print("Unexpected error:", ex)
                midi_path = None
            finally:
                sys.stdout = old_stdout
                sys.stderr = old_stderr

            log_field.value = sio.getvalue()
            if midi_path:
                log_field.value += f"\nOutput MIDI: {midi_path}\n"
                btn_open.disabled = False
                # attach opener
                def _open(e, p=midi_path):
                    try:
                        os.startfile(p)
                    except Exception:
                        try:
                            import webbrowser
                            webbrowser.open(p)
                        except Exception:
                            pass
                btn_open.on_click = _open
            log_field.update()

            page.snack_bar = ft.SnackBar(ft.Text("Processing finished"))
            page.snack_bar.open = True
            page.update()

        btn_run = ft.ElevatedButton("Run", on_click=run_click)
        btn_open = ft.ElevatedButton("Open Output", disabled=True)

        controls = [
            ft.Row([tf_image, btn_pick]),
            ft.Row([tf_output]),
            ft.Row([btn_run, btn_open]),
            log_field,
        ]

        page.add(*controls)

    def on_file_pick(e: ft.FilePickerResultEvent, tf: ft.TextField):
        if e.files:
            tf.value = e.files[0].path
            tf.update()

    ft.app(target=main)

if __name__ == "__main__":
    # No args -> launch GUI (if available). With args -> CLI mode.
    if len(sys.argv) == 1:
        launch_gui()
    else:
        img = sys.argv[1]
        out = sys.argv[2] if len(sys.argv) > 2 else "drum_output.mid"
        image_to_drum_midi(img, out)