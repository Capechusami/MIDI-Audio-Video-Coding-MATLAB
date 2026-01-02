# 🎵 Musical Instrument Digital Interface (MIDI) for Audio and Video Coding using MATLAB

## 📌 Overview

This repository contains a MATLAB-based project for analyzing, processing, visualizing, and synthesizing **Musical Instrument Digital Interface (MIDI)** data. The project demonstrates how MIDI is used in **audio and video coding applications**, emphasizing its efficiency, flexibility, and low storage requirements compared to raw audio formats.

This work was carried out as part of the **Multimedia Technologies** laboratory course.

---

## 🎯 Objectives

* Analyze MIDI data using MATLAB 
* Extract musical features such as pitch, duration, and velocity
* Perform statistical analysis on MIDI files
* Apply MIDI transformations like transposition and quantization
* Visualize MIDI data using plots and piano roll diagrams
* Synthesize and play audio from MIDI data
* Save original and processed MIDI files

---

## 🧠 Background

Musical Instrument Digital Interface (MIDI) is a digital communication protocol that represents music as a set of instructions rather than recorded sound. MIDI encodes information such as note pitch, timing, duration, velocity, and instrument type. Because of its small file size and flexibility, MIDI is widely used in multimedia systems, music production, and audio-video synchronization.

---

## 🛠️ Tools and Requirements

* MATLAB
* MIDI Toolbox for MATLAB
* Personal Computer
* Input MIDI file (e.g., `AfterTheThrillIsGone.mid`)

---

## 📂 Project Structure

```
├── miditoolbox/                 # MIDI Toolbox for MATLAB
├── AfterTheThrillIsGone.mid     # Input MIDI file
├── midi_lab_experiment.m        # Main MATLAB source code
├── midi_lab_experiment.asv      # MATLAB autosave file
├── output_original.mid          # Original MIDI output
├── output_transposed.mid        # Transposed MIDI output
├── output_quantized.mid         # Quantized MIDI output
├── Figure 1.fig                 # MIDI note events figure
├── Figure 2.fig                 # MIDI visualization figure
├── Figure 3.fig                 # Time vs pitch figure
└── README.md                    # Project documentation
```

---

## ⚙️ Methodology

The project is implemented using MATLAB script sections:

1. Adding the MIDI Toolbox to the MATLAB path
2. Loading the MIDI file into MATLAB
3. Displaying and inspecting the MIDI note matrix
4. Extracting musical features
5. Performing statistical analysis (pitch-class and duration distribution)
6. Applying MIDI processing techniques such as transposition and quantization
7. Visualizing MIDI data using event plots and piano roll diagrams
8. Synthesizing and playing audio from MIDI data
9. Saving original and processed MIDI files

---

## 📊 Results and Analysis

The MIDI file was successfully loaded and analyzed. Statistical analysis revealed clear pitch-class and duration patterns representing the musical structure. MIDI transformations preserved musical coherence while modifying timing and pitch. Visualization techniques provided clear insight into note distribution, and audio playback confirmed successful synthesis.

![image alt](https://github.com/Capechusami/MIDI-Audio-Video-Coding-MATLAB/blob/e3613ce856ac9b114fa141f2ffd76e37f64536f8/Figure%201.png)
![image alt](https://github.com/Capechusami/MIDI-Audio-Video-Coding-MATLAB/blob/e3613ce856ac9b114fa141f2ffd76e37f64536f8/Figure%202.png)
![image alt](https://github.com/Capechusami/MIDI-Audio-Video-Coding-MATLAB/blob/e3613ce856ac9b114fa141f2ffd76e37f64536f8/Figure%203.png)
---


## ✅ Conclusion

This project successfully demonstrates MIDI processing for audio and video coding using MATLAB. The experiment highlights the importance of MIDI in multimedia applications due to its efficiency, adaptability, and ease of manipulation.


## 👥 Authors

* Samuel Tesfachew

