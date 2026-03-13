# MATLAB Audio Signal Compression & Noise Reduction

A MATLAB-based signal processing project that compresses audio signals while maintaining acceptable listening quality. The system reduces memory usage through **downsampling and bit-depth reduction**, while improving clarity using a **Butterworth noise reduction filter**.

The project also visualizes waveform changes and compares memory usage before and after compression.

---

## Project Overview

Audio signals recorded at high sampling rates and bit depths consume large storage space.  
This project demonstrates a practical method to **compress audio files while maintaining usable sound quality**.

The system performs the following operations:

- Reads an input audio file
- Converts stereo audio to mono
- Compresses the signal using downsampling and quantization
- Removes noise using a Butterworth filter
- Generates a compressed output audio file
- Visualizes waveform changes
- Displays memory usage comparison

---

## Key Features

- Supports multiple audio formats (`.wav`, `.mp3`, `.wma`)
- Automatic **stereo to mono conversion**
- **Downsampling-based compression**
- **Bit depth reduction**
- **Butterworth filtering for noise reduction**
- **Waveform visualization**
- **Memory usage comparison**
- **Compressed audio file generation**

---

## System Workflow

```
Input Audio File
        ↓
Stereo to Mono Conversion
        ↓
Downsampling (Sampling Rate Reduction)
        ↓
Bit Depth Reduction
        ↓
Noise Removal using Butterworth Filter
        ↓
Signal Normalization
        ↓
Compressed Audio Output
```

---

---

## Technologies Used

- MATLAB
- Signal Processing Toolbox
- Digital Signal Processing Concepts

---

---

## How to Run the Project

### Step 1
Open **MATLAB**

### Step 2
Clone the repository

```
git clone https://github.com/yourusername/Audio-Signal-Compression-MATLAB.git
```

### Step 3
Open the project folder in MATLAB.

### Step 4
Run the MATLAB script

```
Audio_Compression_Project.m
```

### Step 5
Select an audio file when prompted.

### Step 6
The program will:

- Compress the audio
- Remove noise
- Display waveform plots
- Show memory usage comparison
- Save the compressed audio output

---

## Output

The program generates:

- Original waveform visualization
- Compressed waveform visualization
- Memory usage comparison
- Compressed audio output file

Example output:

```
Compressed_Audio.wav
```

---

## Example Results

| Metric | Original Audio | Compressed Audio |
|------|------|------|
| Sampling Rate | High | Reduced |
| Bit Depth | 16-bit | 8-bit |
| File Size | Larger | Reduced |

The compression significantly reduces storage requirements while maintaining acceptable audio quality.

---

## Learning Outcomes

This project demonstrates practical applications of:

- Audio signal processing
- Sampling rate conversion
- Quantization techniques
- Digital filtering
- MATLAB signal processing tools

---

## Future Improvements

Possible improvements include:

- Advanced compression algorithms
- Adaptive noise filtering
- Real-time audio compression
- GUI interface for easier interaction
- Machine learning based audio enhancement

---
## License

This project is intended for **educational and research purposes**.
