## Algorithmic Music Generation in Haskell
### Problem Statement
The primary goal of this project is to implement algorithmic music generation in Haskell, specifically focusing on creating melodies like "Happy Birthday." Exploring the Principles of Programming Languages (POPL) angle involves leveraging functional programming paradigms, mathematical concepts for sound synthesis, and possibly showcasing a domain-specific language (DSL) for musical compositions. While similar solutions might exist, this implementation aims to demonstrate the expressive power of the functional paradigm and efficiency in music generation, differentiating itself through optimization and clarity in code design.

### Software Architecture
The software architecture follows a modular structure where components handle different aspects of music generation. Core functionalities include frequency calculation, waveform generation, and file I/O for playback. Parts of the code utilize libraries such as Data.ByteString for file operations. Testing predominantly occurs locally, utilizing Haskell's testing frameworks if applicable. The architecture doesn’t involve a client-server model or databases.

### Music Generation Process

The music generation process involves the following key components:

- **Pulse**: Represents a discrete sample of the sound wave.
- **Sine Waves**: Used to generate clean and harmonic sound.
- **Attack and Release**: Adjusted to create smoother transitions at the beginning and end of each note.
- **Note Generation**: Utilizes the frequency formula to generate notes based on semitones and beats.

### Usage

To generate and play the "Happy Birthday" melody, run the following command:

```bash
stack run
```

This will generate a binary file (output.bin) containing the music and play it using ffplay.

An alternative to run if you don't have stack is: 
$ runghc Main.hs
$ ffplay -showmode 1 -f f32le -ar 48000 output.bin

### Customization

Feel free to customize the melody or create your own tunes. Modify the happyBirthday list in Main.hs to define different notes and durations.

Adjust the constants like volume, sampleRate, and beatDuration to control the overall sound characteristics.

### Results and Tests Conducted
The project underwent comprehensive testing, using predefined melodies such as "Happy Birthday" and "Twinkle Twinkle Little Stars" for validation. Benchmarks assessed performance improvements in generating music compared to alternative approaches. Graphs and metrics illustrate the efficiency and accuracy of the algorithm in aligning with the original problem statement.

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

## POPL Aspects
 Here are some POPL (Principles of Programming Languages) aspects in the Python and Haskell code for music generation:

### Python Code:
### Imperative Style:

POPL Aspect: The Python script follows an imperative paradigm where functions modify shared state or objects directly.
Code Pointer: The loop in write_wave_file that appends data directly to the wav_file.
### Mutable Data Structures:

POPL Aspect: Usage of mutable lists (sine_list) and in-place operations.
Code Pointer: List manipulation and appending in the gen_sine_wave function.
Haskell Code:
### Functional Paradigm:

POPL Aspect: Utilizes higher-order functions, immutability, and composability.
Code Pointer: Functions like map, zipWith3 for composing the sound waves, maintaining immutability throughout.
### Type Safety:

POPL Aspect: Strong type system ensuring type correctness and reducing runtime errors.
Code Pointer: Type annotations (Float, Samples, etc.) ensuring soundness across the codebase.
### Lazy Evaluation:

POPL Aspect: Haskell's lazy evaluation strategy enables handling infinite streams efficiently.
Code Pointer: Lazy loading of byte strings in save function via B.toLazyByteString.
### Pure Functions:

POPL Aspect: Emphasizes pure functions without side effects.
Code Pointer: Functions like freq, note purely generate sound waves without affecting external state.
### Static Typing:

POPL Aspect: Haskell's static typing offers compile-time guarantees, reducing runtime errors.
Code Pointer: Type declarations (type, type aliases) enforce strict typing.
### Difficulties Faced:
Transitioning Paradigms: Moving from an imperative approach in Python to a functional approach in Haskell might involve a learning curve for those accustomed to imperative programming.
Understanding Laziness: Haskell's laziness might pose challenges in predicting and managing memory usage due to its non-strict evaluation strategy.
Each language's design principles significantly influence how the music generation task is approached, making a comparison between imperative Python and functional Haskell an interesting exploration of POPL aspects.

## Comparison: Haskell vs. Python Solutions
### Haskell Solution:
The Haskell implementation leverages functional paradigms and strong type systems, providing several advantages over the Python solution:

Efficiency: Haskell's lazy evaluation and optimized functional constructs enable efficient sound generation, making it more suitable for handling large-scale compositions without compromising performance.

Type Safety: Haskell's strong static typing reduces the likelihood of runtime errors, ensuring correctness in musical representations and waveform generation.

Functional Paradigm: Haskell's functional paradigm allows concise and declarative code, enabling a more elegant and expressive representation of musical concepts.

Optimized Libraries: Utilization of optimized libraries for byte string manipulation (Data.ByteString) aids in efficient file I/O operations.

### Python Solution:
The Python solution provides a straightforward approach to generating sound waves but might have certain limitations:

Performance: Python's interpreter-based execution might lead to performance bottlenecks, especially when handling larger datasets or complex waveform generation.

Lack of Type Safety: Python's dynamic typing could potentially lead to runtime errors related to data type mismatches or inconsistencies.

### Why Haskell Might Be Preferred:
Efficiency and Performance: Haskell's compiled nature and optimized functional constructs make it more efficient for this task, especially in handling algorithmic music generation.

Type Safety and Robustness: The strong type system in Haskell ensures code correctness and reduces the chances of unexpected runtime errors compared to Python.

## Made by:

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
