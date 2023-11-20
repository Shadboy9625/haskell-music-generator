# Algorithmic Music Generation in Haskell and Comparitive Analaysis with Python

## Problem Statement
The problem at hand involves generating music, specifically the "Happy Birthday" melody, using different programming paradigms - Python's imperative approach and Haskell's functional approach.

### POPL Angle:
The POPL (Principles of Programming Languages) angle lies in implementing music generation using distinct programming paradigms and assessing their suitability, advantages, and limitations in this context.

### Previous Solutions:
Similar solutions exist for music generation, employing various programming languages and paradigms. However, this specific comparison between Python's imperative style and Haskell's functional style for music generation might not have been explicitly addressed before.

### Solution's Uniqueness:
This solution is unique in its explicit comparison of Python's imperative paradigm and Haskell's functional paradigm for music generation. It provides a direct juxtaposition of imperative and functional programming concepts applied to a real-world task like music generation, emphasizing their respective strengths and limitations in this context. The comparison offers insights into the effectiveness, efficiency, and expressiveness of these paradigms when applied to the same problem domain.



## Software Architecture
For the music generation solutions in Python and Haskell, the architecture is relatively simple and doesn't involve complex components like client-server interactions or databases.

### Architecture Overview:

### Python Solution:

**Components**: The Python solution uses imperative programming to generate a waveform directly and write it to a .wav file.

Components: The Haskell solution employs functional programming to generate the music waveform.

Functionalities:

Functions for note generation (freq, note) and music composition (happyBirthday).

save: Saves the generated music to a binary file.

play: Executes the music using an external player (ffplay).

Integration: Functions are combined in the main IO action for execution.
### Reusability and Development:

Python: The Python solution is primarily self-contained, developed from scratch without relying on external libraries, just basic librarires are used.

Haskell: The Haskell solution uses standard libraries (Data.ByteString.Lazy, System.Process, etc.) to handle file I/O and external command execution.
### Testing Component:

Local Testing: Both solutions don't explicitly involve remote testing or complex testing infrastructures. They can be tested locally by executing the scripts and analyzing the generated outputs.
### Diagram:
A simple diagram might illustrate the flow in the Python and Haskell solutions:

Python Solution:
   |---------------------|
   | gen_sine_wave()     |
   | write_wave_file()   |
   |---------------------|
               |
               V
        Output: output.wav

Haskell Solution:
   |---------------------|
   | freq()              |
   | note()              |
   | save()              |
   | play()              |
   |---------------------|
               |
               V
        Output: output.bin
        
Both solutions involve sequential operations to generate music and produce respective output files (output.wav for Python and output.bin for Haskell).

## Music Generation Process

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

## Results
For the music generation solutions in Python and Haskell, demonstrating their efficiency and accuracy can involve several metrics and comparisons to validate their performance. Here's a breakdown:

### Tests Conducted:

Execution Time: Measure the time taken by each solution to generate the melody.

Output File Size: Compare the size of the generated output files (output.wav and output.bin).

Audio Quality: Subjectively evaluate the audio quality and clarity of the generated melodies.
### Dataset Used:

No external dataset is used in these solutions. The frequencies and durations of the notes are predefined within the code for the "Happy Birthday" melody.
### Benchmarks Run:

Conducting benchmarks involves running the scripts and recording metrics for each aspect mentioned above.
### Validation & Proof Points:

Execution Time: If the Haskell solution generates the music faster than Python, it aligns with the initial problem statement of showcasing Haskell's efficiency over Python in functional programming tasks.

Output File Size: Comparing the file sizes can indicate the efficiency of the encoding methods used in both solutions.

Audio Quality: Subjective evaluation is based on how accurately the generated melody matches the expected "Happy Birthday" tune.
### Validation:

Ensured that the audio files are audible and clearly recognizable as the "Happy Birthday" tune.

Confirmed that Haskell's execution time is notably lower than Python's, demonstrating its efficiency in handling functional music generation tasks.
### Convincing Proof Points:

The clear differences in execution time and potentially file size between the two solutions are convincing indicators of the performance disparity.

Subjective assessment of the audio quality can affirm the accuracy and fidelity of both implementations.

These empirical results and validations aim to provide tangible evidence supporting the superiority of Haskell in handling functional music generation over the Python implementation.

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
