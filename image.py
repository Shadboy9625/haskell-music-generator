import math
import wave
import struct

def gen_sine_wave(freq, duration, framerate):
  sine_list = []
  for x in range(int(duration * framerate)):
      sine_list.append(math.sin(2.0*math.pi*freq*(x/framerate)))
  return sine_list

def write_wave_file(filename, sine_list, framerate):
  nchannels = 1
  sampwidth = 2
  comptype = "NONE"
  compname = "not compressed"

  wav_file = wave.open(filename, "w")
  wav_file.setparams((nchannels, sampwidth, framerate, len(sine_list), comptype, compname))

  for s in sine_list:
      wav_file.writeframes(struct.pack('h', int(s*32767/2)))

  wav_file.close()

framerate = 44100
duration = 0.5
# note_list = [392, 392, 440, 392, 523.25, 493.88,
#              392, 392, 440, 392, 587.33, 523.25,
#              392, 392, 392, 659.25, 523.25, 493.88, 440,
#              698.46, 698.46, 659.25, 523.25, 587.33, 523.25
#              ]
# beat_list = [0.5, 0.5, 1.0, 1.0, 1.0, 2.0,
#              0.5, 0.5, 1.0, 1.0, 1.0, 2.0,
#              0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0,
#              0.5, 0.5, 1.0, 1.0, 1.0, 2.0]
note_list = [392, 0, 392, 440, 392, 523.25, 493.88,
             392, 0, 392, 440, 392, 587.33, 523.25,
             392, 0, 392, 659.25, 587.33, 523.25, 493.88, 440,
             698.46, 0, 698.46, 659.25, 523.25, 587.33, 523.25
             ]
beat_list = [0.5, 0.05, 0.5, 1.0, 1.0, 1.0, 2.0,
             0.5, 0.05, 0.5, 1.0, 1.0, 1.0, 2.0,
             0.5, 0.05, 0.5, 1.0, 1.0, 1.0, 1.0, 2.0,
             0.5, 0.05, 0.5, 1.0, 1.0, 1.0, 2.0]

wav_data = []
for freq, beat in zip(note_list, beat_list):
  sine_wave = gen_sine_wave(freq, beat, framerate)
  wav_data.extend(sine_wave)

write_wave_file("output.wav", wav_data, framerate)
