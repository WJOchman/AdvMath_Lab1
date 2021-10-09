clear % clears the memory % 
clc % clears the screen%

% Task 1: Construction of continuous time signal %

start = 0;
increment = 0.001;
stop = 0.666;
t = start : increment : stop;                           % t = time (s) %
x_c = sin(2*pi*3*t);                                % x_c = continuous %

% Task 2: Plotting of continous time signal %

plot (t, x_c, 'LineWidth', 2); 
ylim([-1.1 1.1]);
[t] = title('Time vs. Magnitude', 'Color', 'black', 'FontWeight','bold');
t.FontSize = 16;
[x] = xlabel('Time (s)', 'color', 'black', 'FontWeight','bold');
[y] = ylabel('Magnitude', 'color', 'black', 'FontWeight','bold');
x.FontSize = 14;
y.FontSize = 14;
hold on;
grid on; 

% The tick marks must be 14 font, bold, gca?? %

% Task 3: Continuous time to discrete converstion %

Nyquist_Frequency = 3;
Nyquist_Rate = Nyquist_Frequency * 2;
Sampling_Frequency = Nyquist_Rate * 5;
Sampling_Period = 1 / Sampling_Frequency;
Period = 1 / Nyquist_Frequency;
N = Period / Sampling_Period;
n = 0:1:N;
nTs = n * Sampling_Period;
x_disc = sin(2*pi*3*nTs);
stem(x_disc);


% Task 4: Displaying Results %



% Task 5: Data Handling %


% Task 6: Adjust the discrete signal in order that each sample is rounded up/down in order that it lies exactly upon a quantisation level. %


% Task 7: Use the 'interpl' command to resample the signal by a factor of 2. Ivestigate the differences between 'linear' and 'spline' interpolation. %
