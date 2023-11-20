# Haskell Music Generation

This Haskell project demonstrates algorithmic music generation, creating a melody for the classic "Happy Birthday" song. The music is generated using sine waves to produce clean and pleasant sound. This README provides an overview of the project structure, the music generation process, and how to use or customize the code for your own melodies.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Music Generation Process](#music-generation-process)
- [Usage](#usage)
- [Customization](#customization)
- [Python Music Generation](#python-music-generation)

## Introduction

This project uses Haskell to generate musical notes and compose a melody. It leverages sine waves to create clean and harmonic sound. The primary focus is on generating a melody for the "Happy Birthday" song, showcasing the algorithmic approach to music creation.

## Prerequisites

Ensure you have the following prerequisites installed:

- Haskell (GHC)
- ffplay (for playing the generated music)

## Project Structure

The project structure is organized as follows:

- `Main.hs`: Contains the main program logic for music generation.
- `output.bin`: Binary file to store the generated music.
- `README.md`: Documentation file providing an overview of the project.

## Music Generation Process

The music generation process involves the following key components:

- **Pulse**: Represents a discrete sample of the sound wave.
- **Sine Waves**: Used to generate clean and harmonic sound.
- **Attack and Release**: Adjusted to create smoother transitions at the beginning and end of each note.
- **Note Generation**: Utilizes the frequency formula to generate notes based on semitones and beats.

## Usage

To generate and play the "Happy Birthday" melody, run the following command:

```bash
stack run
```

This will generate a binary file (output.bin) containing the music and play it using ffplay.

## Customization

Feel free to customize the melody or create your own tunes. Modify the happyBirthday list in Main.hs to define different notes and durations.

Adjust the constants like volume, sampleRate, and beatDuration to control the overall sound characteristics.

## Python Music Generation

This Python script generates a .wav file that plays the "Happy Birthday" song. The script uses the `math`, `wave`, and `struct` libraries to generate sine waves, write them to a .wav file, and then play the file.

To run the script, save it as `image.py` and use the following command:

```bash
python image.py
```

This will take around 30 seconds of time proving the inefficiency of python to handle functional paradigm. This will create a `output.wav` file in the same directory as the script. The file will contain the "Happy Birthday" song.

The script uses the `gen_sine_wave` function to generate sine waves for each note in the melody. The `write_wave_file` function then writes these sine waves to a .wav file. The `framerate` variable determines the sample rate of the .wav file, and the `duration` variable determines the duration of each note.

The `note_list` and `beat_list` variables define the melody. Each pair of corresponding elements in these lists represents a note and its duration. The `note_list` contains the frequencies of the notes, and the `beat_list` contains the durations of the notes.

The script then generates sine waves for each note in the melody and writes them to the .wav file. The resulting .wav file can be played using any .wav file player.

Please note that the frequencies in the `note_list` are in Hz. You can find the frequencies of common musical notes online.

Made by:

Garvit Jain
2021A7PS2840G
f20212840@goa.bits-pilani.ac.in

Md Shadab Kalim
2021A7PS3058G
f20213058@goa.bits-pilani.ac.in

Baikadi Karthik Reddy
2021A7PS2737G
f20212737@goa.bits-pilani.ac.in

Arjun Saini
2021A7PS1132G
f20211132@goa.bits-pilani.ac.in
