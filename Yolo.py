import os
import tkinter as tk
from tkinter import filedialog, messagebox
from ultralytics import YOLO
from mido import Message, MidiFile, MidiTrack, bpm2tempo, MetaMessage

# === CONFIG ===

MODEL_PATH = r"runs/detect/train2/weights/best.pt"
OUTPUT_MIDI_FOLDER = r"output_midis"
os.makedirs(OUTPUT_MIDI_FOLDER, exist_ok=True)

DRUM_MIDI_MAP = {
    0: 36,  # kick
    1: 38,  # snare
    2: 42,  # hi-hat closed
}

BPM = 120
TICKS_PER_BEAT = 480
tempo = bpm2tempo(BPM)
NOTE_DURATION_TICKS = int(TICKS_PER_BEAT * 0.25)  # 16th note

# Load model once
model = YOLO(MODEL_PATH)

def detect_and_convert(image_path, output_path, status_var):
    status_var.set(f"Processing {os.path.basename(image_path)}...")

    results = model(image_path)

    midi = MidiFile(ticks_per_beat=TICKS_PER_BEAT)
    track = MidiTrack()
    midi.tracks.append(track)
    track.append(MetaMessage('set_tempo', tempo=tempo))

    for result in results:
        boxes = result.boxes
        if boxes is None or len(boxes) == 0:
            status_var.set("No detections found.")
            return

        detections = list(zip(boxes.xyxy, boxes.cls))
        # Sort left to right by box center X
        detections.sort(key=lambda b: ((b[0][0].item() + b[0][2].item()) / 2))

        x_positions = [((b[0][0].item() + b[0][2].item()) / 2) for b in detections]
        min_x, max_x = min(x_positions), max(x_positions)
        x_range = max_x - min_x if max_x > min_x else 1

        last_tick = 0

        for (box, cls), x_center in zip(detections, x_positions):
            class_id = int(cls.item())
            note = DRUM_MIDI_MAP.get(class_id)
            if note is None:
                continue

            box_height = box[3].item() - box[1].item()
            velocity = min(127, max(20, int(box_height * 5)))

            total_beats = 16
            relative_pos = (x_center - min_x) / x_range
            note_tick = int(relative_pos * total_beats * TICKS_PER_BEAT)

            delta = note_tick - last_tick
            if delta < 0:
                delta = 0

            track.append(Message('note_on', note=note, velocity=velocity, time=delta))
            track.append(Message('note_off', note=note, velocity=0, time=NOTE_DURATION_TICKS))

            last_tick = note_tick + NOTE_DURATION_TICKS

    midi.save(output_path)
    status_var.set(f"MIDI saved: {output_path}")
    messagebox.showinfo("Done", f"MIDI file saved:\n{output_path}")

def select_file_and_process(status_var):
    filepath = filedialog.askopenfilename(
        title="Select Drum Sheet Image",
        filetypes=[("PNG files", "*.png"), ("JPEG files", "*.jpg *.jpeg"), ("All files", "*.*")]
    )
    if filepath:
        filename = os.path.splitext(os.path.basename(filepath))[0]
        output_path = os.path.join(OUTPUT_MIDI_FOLDER, filename + ".mid")
        detect_and_convert(filepath, output_path, status_var)

def main():
    root = tk.Tk()
    root.title("Drum Sheet to MIDI Converter")
    root.geometry("400x150")

    status_var = tk.StringVar(value="Select an image and click Convert")

    btn_select = tk.Button(root, text="Select Drum Sheet Image", command=lambda: select_file_and_process(status_var))
    btn_select.pack(pady=20)

    lbl_status = tk.Label(root, textvariable=status_var, wraplength=380)
    lbl_status.pack(pady=10)

    root.mainloop()

if __name__ == "__main__":
    main()