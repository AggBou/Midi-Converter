import sys
import os
import shutil
import subprocess
from mido import MidiFile
from PyQt5.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QPushButton,
    QTextEdit, QLabel, QFileDialog, QMessageBox
)
from PyQt5.QtCore import QProcess, QIODevice, QPoint

# MIDI → Motor mapping
MIDI_TO_MOTOR = {
    36: 'M1',  # Bass Drum
    42: 'M2',  # Closed Hi-Hat
    38: 'M3',  # Snare Drum
}


def generate_motor_code(midi_file: MidiFile) -> str:
    """Generate Micro:bit MakeCode (TypeScript) code from a MIDI file."""
    code = """input.onButtonPressed(Button.AB, function on_button_pressed_ab() {
    stopLoop = false
    while (true) {
        if (stopLoop) {
            break
        }
"""

    for track in midi_file.tracks:
        for msg in track:
            if msg.type == 'note_on':
                note = msg.note
                velocity = msg.velocity

                if note not in MIDI_TO_MOTOR:
                    continue

                motor = MIDI_TO_MOTOR[note]
                motor_speed = velocity

                code += f"""
        // Note {note} → {motor}
        neZha.setMotorSpeed(neZha.MotorList.{motor}, {motor_speed})  // Forward
        neZha.stopMotor(neZha.MotorList.{motor})

        neZha.setMotorSpeed(neZha.MotorList.{motor}, -{motor_speed}) // Reverse
        neZha.stopMotor(neZha.MotorList.{motor})
"""

    code += """
    }
})

radio.onReceivedString(function on_received_string(receivedString: string) {
    if (receivedString == "stop") {
        stopLoop = true
    }
})

input.onButtonPressed(Button.B, function on_button_pressed_b() {
    stopLoop = true
    basic.showString("Stopped")
})

radio.onReceivedNumber(function on_received_number(receivedBpm: number) {
    music.setTempo(receivedBpm)
    motorSpeed = Math.map(receivedBpm, 40, 100, -80, -100)
})

let motorSpeed = 0
let initialSpeed = 0
let stopLoop = false
let beatRunning = false
let potValue = 0
beatRunning = false
let bpm = 0
radio.setGroup(161)
music.setTempo(60)
midi.useRawSerial()

// Crash sensors with MIDI
basic.forever(function on_forever() {
    if (PlanetX_Basic.Crash(PlanetX_Basic.DigitalRJPin.J1)) {
        midi.toneOn(65.41)
        basic.pause(music.beat(BeatFraction.Sixteenth))
        midi.toneOff(65.41)
        basic.pause(music.beat(BeatFraction.Eighth))
    }
})

basic.forever(function on_forever2() {
    if (PlanetX_Basic.Crash(PlanetX_Basic.DigitalRJPin.J3)) {
        midi.toneOn(92.5)
        basic.pause(music.beat(BeatFraction.Sixteenth))
        midi.toneOff(92.5)
        basic.pause(music.beat(BeatFraction.Eighth))
    }
})

basic.forever(function on_forever3() {
    if (PlanetX_Basic.Crash(PlanetX_Basic.DigitalRJPin.J2)) {
        midi.toneOn(73.42)
        basic.pause(music.beat(BeatFraction.Sixteenth))
        midi.toneOff(73.42)
        basic.pause(music.beat(BeatFraction.Eighth))
    }
})
"""
    return code


class MidiConverterApp(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("MIDI → Micro:bit MakeCode (TypeScript) Converter")
        self.resize(900, 700)

        # UI elements
        self.layout = QVBoxLayout()
        self.instructions = QLabel("Select a MIDI file to generate Micro:bit TypeScript (MakeCode) code.")
        self.load_button = QPushButton("Load MIDI File")
        self.save_button = QPushButton("Save Generated Code")
        self.compile_button = QPushButton("Compile to HEX")
        self.deploy_button = QPushButton("Deploy to micro:bit")
        self.status_label = QLabel("")
        self.text_area = QTextEdit()
        self.text_area.setPlaceholderText("Generated TypeScript code will appear here...")

        # Layout setup
        self.layout.addWidget(self.instructions)
        self.layout.addWidget(self.load_button)
        self.layout.addWidget(self.save_button)
        self.layout.addWidget(self.compile_button)
        self.layout.addWidget(self.deploy_button)
        self.layout.addWidget(self.status_label)
        self.layout.addWidget(self.text_area)
        self.setLayout(self.layout)

        # Connect events
        self.load_button.clicked.connect(self.load_midi_file)
        self.save_button.clicked.connect(self.save_code)
        self.compile_button.clicked.connect(self.compile_to_hex)
        self.deploy_button.clicked.connect(self.deploy_to_microbit)

    def compile_to_hex(self):
        """Save the current TypeScript as main.ts (or chosen name) and run `mkc` to compile to hex (no deploy)."""
        code = self.text_area.toPlainText()
        if not code.strip():
            QMessageBox.warning(self, "Warning", "No code to compile!")
            return

        # Suggest a default filename of main.ts
        save_path, _ = QFileDialog.getSaveFileName(
            self,
            "Save TypeScript File (will be used for compile)",
            "main.ts",
            "TypeScript Files (*.ts)"
        )
        if not save_path:
            return

        try:
            with open(save_path, "w", encoding="utf-8") as f:
                f.write(code)
            self.status_label.setText(f"Saved to: {save_path}")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to save file:\n{e}")
            return

        # Run mkc asynchronously using QProcess so the UI doesn't freeze
        save_dir = os.path.dirname(save_path) or os.getcwd()

        # Disable buttons while running
        self.deploy_button.setEnabled(False)
        self.compile_button.setEnabled(False)
        self.status_label.setText(f"Compiling in: {save_dir} ...")

        # Create a small dialog to show live output
        output_dialog = QWidget(self)
        output_dialog.setWindowTitle("mkc output (compile)")
        output_layout = QVBoxLayout(output_dialog)
        output_text = QTextEdit()
        output_text.setReadOnly(True)
        output_layout.addWidget(output_text)
        output_dialog.resize(700, 400)
        output_dialog.show()
        # Center the output dialog over the main window
        try:
            parent_center = self.geometry().center()
            dx = output_dialog.width() // 2
            dy = output_dialog.height() // 2
            top_left = QPoint(parent_center.x() - dx, parent_center.y() - dy)
            # map to global coordinates relative to parent
            global_top_left = self.mapToGlobal(top_left)
            output_dialog.move(global_top_left)
        except Exception:
            pass

        proc = QProcess(self)
        proc.setProcessChannelMode(QProcess.MergedChannels)
        proc.setWorkingDirectory(save_dir)

        def append_output():
            data = proc.readAllStandardOutput()
            try:
                text = bytes(data).decode("utf-8", errors="replace")
            except Exception:
                text = str(data)
            output_text.moveCursor(output_text.textCursor().End)
            output_text.insertPlainText(text)

        def on_finished(exitCode, exitStatus):
            append_output()
            # close the output dialog when finished
            try:
                output_dialog.close()
            except Exception:
                pass
            self.deploy_button.setEnabled(True)
            self.compile_button.setEnabled(True)
            if exitCode == 0:
                # likely location of produced hex
                hex_path = os.path.join(save_dir, "built", "binary.hex")
                if os.path.exists(hex_path):
                    QMessageBox.information(self, "Compile", f"Compilation finished successfully. Hex: {hex_path}")
                    self.status_label.setText(f"Compiled to: {hex_path}")
                else:
                    QMessageBox.information(self, "Compile", "Compilation finished successfully. Output hex not found in expected location.")
                    self.status_label.setText(f"Compile finished (rc=0) in: {save_dir}")
            else:
                QMessageBox.warning(self, "Compile", f"Compilation exited with code {exitCode}. See output for details.")
                self.status_label.setText(f"Compile failed (rc={exitCode})")

        def on_error(error):
            append_output()
            try:
                output_dialog.close()
            except Exception:
                pass
            self.deploy_button.setEnabled(True)
            self.compile_button.setEnabled(True)
            QMessageBox.warning(self, "Compile", f"Failed to start mkc: {error}")
            self.status_label.setText("Compile failed to start mkc")

        proc.readyReadStandardOutput.connect(append_output)
        proc.finished.connect(on_finished)
        try:
            proc.errorOccurred.connect(on_error)
        except Exception:
            pass

        # Check mkc is available on PATH first
        mkc_path = shutil.which("mkc")
        if not mkc_path:
            # Try to locate mkc in global npm bin (common on Windows when npm global bin isn't on PATH)
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
            extra = ""
            try:
                where = subprocess.run(["where", "mkc"], capture_output=True, text=True)
                extra = where.stdout + where.stderr
            except Exception:
                extra = ""
            QMessageBox.critical(self, "Compile", "mkc executable not found on PATH.\nPlease install mkc and ensure it's on your PATH (or restart your editor).\n" + extra)
            output_text.insertPlainText("Error: mkc not found on PATH.\n")
            self.deploy_button.setEnabled(True)
            self.compile_button.setEnabled(True)
            self.status_label.setText("mkc not found on PATH")
            return

        # Start the process using full path (no -d to only compile)
        proc.start(mkc_path, [])

    def load_midi_file(self):
        """Open MIDI file and display generated TypeScript code"""
        midi_path, _ = QFileDialog.getOpenFileName(
            self,
            "Select MIDI file",
            "",
            "MIDI Files (*.mid *.midi)"
        )
        if not midi_path:
            return

        try:
            midi = MidiFile(midi_path)
            generated_code = generate_motor_code(midi)
            self.text_area.setPlainText(generated_code)
            self.status_label.setText(f"Loaded: {midi_path}")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to process MIDI file:\n{e}")

    def save_code(self):
        """Save the generated TypeScript code"""
        code = self.text_area.toPlainText()
        if not code.strip():
            QMessageBox.warning(self, "Warning", "No code to save!")
            return

        save_path, _ = QFileDialog.getSaveFileName(
            self,
            "Save TypeScript File",
            "",
            "TypeScript Files (*.ts)"
        )
        if not save_path:
            return

        try:
            with open(save_path, "w", encoding="utf-8") as f:
                f.write(code)
            self.status_label.setText(f"Saved to: {save_path}")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to save file:\n{e}")

    def deploy_to_microbit(self):
        """Save the current TypeScript as main.ts (or chosen name) and run `mkc -d` in that directory."""
        code = self.text_area.toPlainText()
        if not code.strip():
            QMessageBox.warning(self, "Warning", "No code to deploy!")
            return

        # Suggest a default filename of main.ts
        save_path, _ = QFileDialog.getSaveFileName(
            self,
            "Save TypeScript File (will be used for deploy)",
            "main.ts",
            "TypeScript Files (*.ts)"
        )
        if not save_path:
            return

        try:
            with open(save_path, "w", encoding="utf-8") as f:
                f.write(code)
            self.status_label.setText(f"Saved to: {save_path}")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to save file:\n{e}")
            return

        # Run mkc -d asynchronously using QProcess so the UI doesn't freeze
        save_dir = os.path.dirname(save_path) or os.getcwd()

        # Disable button while running
        self.deploy_button.setEnabled(False)
        self.status_label.setText(f"Deploying in: {save_dir} ...")

        # Create a small dialog to show live output
        output_dialog = QWidget(self)
        output_dialog.setWindowTitle("mkc output")
        output_layout = QVBoxLayout(output_dialog)
        output_text = QTextEdit()
        output_text.setReadOnly(True)
        output_layout.addWidget(output_text)
        output_dialog.resize(700, 400)
        output_dialog.show()
        # Center the output dialog over the main window
        try:
            parent_center = self.geometry().center()
            dx = output_dialog.width() // 2
            dy = output_dialog.height() // 2
            top_left = QPoint(parent_center.x() - dx, parent_center.y() - dy)
            # map to global coordinates relative to parent
            global_top_left = self.mapToGlobal(top_left)
            output_dialog.move(global_top_left)
        except Exception:
            # If centering fails for any reason, ignore and continue
            pass

        proc = QProcess(self)
        proc.setProcessChannelMode(QProcess.MergedChannels)
        proc.setWorkingDirectory(save_dir)

        def append_output():
            data = proc.readAllStandardOutput()
            try:
                text = bytes(data).decode("utf-8", errors="replace")
            except Exception:
                text = str(data)
            output_text.moveCursor(output_text.textCursor().End)
            output_text.insertPlainText(text)

        def on_finished(exitCode, exitStatus):
            append_output()
            # close the output dialog when finished
            try:
                output_dialog.close()
            except Exception:
                pass
            self.deploy_button.setEnabled(True)
            if exitCode == 0:
                QMessageBox.information(self, "Deploy", "Deployment command finished successfully.")
                self.status_label.setText(f"Deployed (rc=0) in: {save_dir}")
            else:
                QMessageBox.warning(self, "Deploy", f"Deployment command exited with code {exitCode}. See output for details.")
                self.status_label.setText(f"Deploy failed (rc={exitCode})")

        def on_error(error):
            append_output()
            # close the output dialog on error as well
            try:
                output_dialog.close()
            except Exception:
                pass
            self.deploy_button.setEnabled(True)
            QMessageBox.warning(self, "Deploy", f"Failed to start mkc: {error}")
            self.status_label.setText("Deploy failed to start mkc")

        proc.readyReadStandardOutput.connect(append_output)
        proc.finished.connect(on_finished)
        # errorOccurred may not be available on older PyQt5; wrap in try
        try:
            proc.errorOccurred.connect(on_error)
        except Exception:
            pass

        # Check mkc is available on PATH first
        mkc_path = shutil.which("mkc")
        if not mkc_path:
            # Try to locate mkc in global npm bin (common on Windows when npm global bin isn't on PATH)
            try:
                npm_bin = subprocess.run(["npm", "bin", "-g"], capture_output=True, text=True)
                bin_dir = npm_bin.stdout.strip()
                if bin_dir:
                    # check for mkc or mkc.cmd (Windows)
                    cand = os.path.join(bin_dir, "mkc")
                    cand_cmd = os.path.join(bin_dir, "mkc.cmd")
                    if os.path.exists(cand_cmd):
                        mkc_path = cand_cmd
                    elif os.path.exists(cand):
                        mkc_path = cand
            except Exception:
                pass

        if not mkc_path:
            # try Windows where as a fallback to give user more info
            extra = ""
            try:
                where = subprocess.run(["where", "mkc"], capture_output=True, text=True)
                extra = where.stdout + where.stderr
            except Exception:
                extra = ""
            QMessageBox.critical(self, "Deploy", "mkc executable not found on PATH.\nPlease install mkc and ensure it's on your PATH (or restart your editor).\n" + extra)
            output_text.insertPlainText("Error: mkc not found on PATH.\n")
            self.deploy_button.setEnabled(True)
            self.status_label.setText("mkc not found on PATH")
            return

        # Start the process using full path
        proc.start(mkc_path, ["-d"]) 


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MidiConverterApp()
    window.show()
    sys.exit(app.exec_())
