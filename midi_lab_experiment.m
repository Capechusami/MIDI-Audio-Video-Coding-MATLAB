addpath(genpath('C:\Users\Cap\Documents\MATLAB\MIDI\miditoolbox'));  % Replace with your actual path
which readmidi

%% ================================================
% GENERALIZED MATLAB MIDI PROCESSING TEMPLATE
% ================================================


%% Step 2: Load a MIDI file
% Replace 'example.mid' with your MIDI file
midiFile = 'AfterTheThrillIsGone.mid';

% Read MIDI file into a notematrix
[nmat, ~] = readmidi(midiFile);

% Display the notematrix
disp('Original Notematrix:');
disp(nmat);

%% Step 3: Extract Useful Data
startTimes = nmat(:, 1);     % Note onset times
durations  = nmat(:, 2);     % Note durations
noteNumbers = nmat(:, 4);    % MIDI note numbers
velocities  = nmat(:, 5);    % Note velocities

%% Step 4: Statistical Analysis
% 4.1 Duration distribution
durationDist = durdist1(nmat);
disp('Duration Distribution:');
disp(durationDist);

% 4.2 Pitch-class distribution
pitchClassDist = pcdist1(nmat);
disp('Pitch-Class Distribution:');
disp(pitchClassDist);

%% Step 5: Processing
% 5.1 Transpose to C major
nmat_transposed = transpose2c(nmat);

% 5.2 Quantize note onsets (example: 50 ms intervals)
nmat_quantized = quantize(nmat, 0.05);

%% Step 6: Visualization
% 6.1 Simple MIDI plot
figure;
plot(startTimes, noteNumbers, 'o');
xlabel('Time (seconds)');
ylabel('MIDI Note Number');
title('MIDI Note Events');
grid on;

% 6.2 Velocity-based scatter plot
figure;
scatter(startTimes, noteNumbers, velocities, 'filled');
colorbar;
colormap('jet');
xlabel('Start Time (seconds)');
ylabel('MIDI Note Number');
title('MIDI Notes Visualization');
grid on;

% 6.3 Piano roll visualization
figure;
pianoroll(nmat);

%% Step 7: Audio Playback
% Play the notematrix as audio
playsound(nmat);


% Save original MIDI
writemidi(nmat, 'output_original.mid');

% If you have transposed or quantized versions, repeat the same fix
% Example for transposed
nmat_transposed(:,3) = 1;  % Ensure channel
nmat_transposed(:,1:2) = round(nmat_transposed(:,1:2), 3);
writemidi(nmat_transposed, 'output_transposed.mid');

% Example for quantized
nmat_quantized(:,3) = 1;  % Ensure channel
nmat_quantized(:,1:2) = round(nmat_quantized(:,1:2), 3);
writemidi(nmat_quantized, 'output_quantized.mid');

