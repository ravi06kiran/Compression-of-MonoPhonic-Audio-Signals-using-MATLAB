clc;
clear;
close all;

%% STEP 1 : Select Audio File
[file, path] = uigetfile({'*.wav;*.mp3;*.wma'}, 'Select Audio File');
audioFile = fullfile(path,file);

%can use specific/selectable file
[audioSignal, fs] = audioread(audioFile);

%% STEP 2 : Convert Stereo to Mono (if required)
if size(audioSignal,2) > 1
    audioSignal = mean(audioSignal,2);
end

%% STEP 3 : Calculate Original Memory Size
originalInfo = whos('audioSignal');
originalSizeKB = originalInfo.bytes/1024;

fprintf('Original Audio Size : %.2f KB\n',originalSizeKB);

%% STEP 4 : Downsample (Compression Step 1)
downsampleFactor = 2;
compressedSignal = downsample(audioSignal,downsampleFactor);

newFs = round(fs/downsampleFactor);

%% STEP 5 : Bit Depth Reduction (Compression Step 2)
bitDepth = 8;

compressedSignal = round(compressedSignal*(2^(bitDepth-1)))/(2^(bitDepth-1));

%% STEP 6 : Noise Reduction using Butterworth Filter

cutoffPercentage = 0.4;    % value must be between 0 and 1

Wn = cutoffPercentage;     % normalized frequency (0-1)

[b,a] = butter(6,Wn,'low');

compressedSignal = filtfilt(b,a,compressedSignal);

%% STEP 7 : Normalize signal
compressedSignal = compressedSignal / max(abs(compressedSignal));

%% STEP 8 : Calculate Compressed Memory Size
compressedInfo = whos('compressedSignal');
compressedSizeKB = compressedInfo.bytes/1024;

fprintf('Compressed Audio Size : %.2f KB\n',compressedSizeKB);

%% STEP 9 : Plotting Signals, Saving and Playing audio files 

figure

subplot(2,1,1)
plot(audioSignal)
title('Original Audio Signal')
xlabel('Samples')
ylabel('Amplitude')

subplot(2,1,2)
plot(compressedSignal)
title('Compressed Audio Signal')
xlabel('Samples')
ylabel('Amplitude')

disp('Playing Original Audio...')
sound(audioSignal,fs)
pause(length(audioSignal)/fs + 1)
disp('Playing Compressed Audio...')
sound(compressedSignal,newFs)
audiowrite('Compressed_Audio.wav',compressedSignal,newFs)
disp('Compressed audio saved as Compressed_Audio.wav')