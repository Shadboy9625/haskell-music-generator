# Haskell Music Generation

This Haskell project demonstrates algorithmic music generation, creating a melody for the classic "Happy Birthday" song. The music is generated using sine waves to produce clean and pleasant sound. This README provides an overview of the project structure, the music generation process, and how to use or customize the code for your own melodies.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Music Generation Process](#music-generation-process)
- [Usage](#usage)
- [Customization](#customization)

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
This will generate a binary file (output.bin) containing the music and play it using ffplay.
```

## Customization

Feel free to customize the melody or create your own tunes. Modify the happyBirthday list in Main.hs to define different notes and durations.

Adjust the constants like volume, sampleRate, and beatDuration to control the overall sound characteristics.
