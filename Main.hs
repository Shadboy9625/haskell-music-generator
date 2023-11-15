-- | Music Generation in Haskell: Happy Birthday Melody

module Main where

import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString.Builder as B
import Data.Foldable
import System.Process
import Text.Printf

-- | Type synonyms for sound properties
type Pulse = Float
type Seconds = Float
type Samples = Float
type Hz = Float
type Semitones = Float
type Beats = Float

-- | File path to save the generated music
outputFilePath :: FilePath
outputFilePath = "output.bin"

-- | Adjust the volume to prevent distortion
volume :: Float
volume = 0.3

-- | Sampling rate (number of samples per second)
sampleRate :: Samples
sampleRate = 48000.0

-- | Standard pitch (A4 = 440 Hz)
pitchStandard :: Hz
pitchStandard = 440.0

-- | Beats per minute (tempo)
bpm :: Beats
bpm = 120.0

-- | Duration of one beat in seconds
beatDuration :: Seconds
beatDuration = 60.0 / bpm

-- | Function to calculate frequency in Hz for a given number of semitones
f :: Semitones -> Hz
f n = pitchStandard * (2 ** (1.0 / 12.0)) ** n

-- | Function to generate a note for a specific number of semitones and duration in beats
note :: Semitones -> Beats -> [Pulse]
note n beats = freq (f n) (beats * beatDuration)

-- | Function to create a sine wave of specific frequency and duration
freq :: Hz -> Seconds -> [Pulse]
freq hz duration =
  map (* volume) $ zipWith3 (\x y z -> x * y * z) release attack output
  where
    step = (hz * 2 * pi) / sampleRate
    -- Generate an attack to make notes smoother
    attack :: [Pulse]
    attack = map (min 1.0) [0.0, 0.01 .. 0.1] -- Increased attack time
    -- Generate a release to smooth the end of the sound
    release :: [Pulse]
    release = map (* last attack) $ reverse attack -- Mimicking attack for release
    -- Generate the actual sound wave (sine wave)
    output :: [Pulse]
    output = map sin $ map (* step) [0.0 .. sampleRate * duration]

-- | Melody for 'Happy Birthday' song
happyBirthday :: [Pulse]
happyBirthday =
  concat
    [ note 0 0.5, note 0 0.5, note 2 1.0, note 0 1.0, note 5 1.0, note 4 2.0, -- Happy Birthday to you
      note 0 0.5, note 0 0.5, note 2 1.0, note 0 1.0, note 7 1.0, note 5 2.0, -- Happy Birthday to you
      note 0 0.5, note 0 0.5, note 12 1.0, note 9 1.0, note 5 1.0, note 4 1.0, note 2 1.0, -- Happy Birthday dear [Name]
      note 10 0.5, note 10 0.5, note 9 1.0, note 5 1.0, note 7 1.0, note 5 2.0 -- Happy Birthday to you
    ]

-- | Function to save the generated music to a binary file
save :: FilePath -> [Pulse] -> IO ()
save filePath pulses = B.writeFile filePath $ B.toLazyByteString $ fold $ map B.floatLE pulses

-- | Function to play the generated music
play :: IO ()
play = do
  save outputFilePath happyBirthday
  -- Play the generated music using ffplay command
  _ <- runCommand $ printf "ffplay -autoexit -showmode 1 -f f32le -ar %f %s" sampleRate outputFilePath
  return ()

-- | Entry point of the program
main :: IO ()
main = play
