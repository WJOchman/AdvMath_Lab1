clear % clears the memory % 
clc % clears the screen%

% Task 1: Construction of continuous time signal %

start = 0;
increment = 0.001;
stop = 0.666;
t = start : increment : stop;                           % t = time (s) %
x_c = sin(2*pi*3*t);                                % x_c = continuous %

% Task 2: Plotting of continous time signal %

figure('units', 'normalized', 'OuterPosition', [0 0 1 1]);
plot (t, x_c, 'LineWidth', 2, 'Color', 'blue'); 
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
n = 0:1:2*N;
nTs = n * Sampling_Period;
x_disc = sin(2*pi*3*nTs);
stem(nTs,x_disc, 'LineWidth', 2, 'Color', 'red');

% Task 4: Displaying Results %

legend('sin(2*pi*3*t)','sin(2*pi*3*nTs)')
fig = gcf;
saveas(gcf,'figure1.jpeg');

% Task 5: Data Handling %

T = table(nTs(:),x_disc(:),'VariableNames',{'Discrete Time Data','Discrete Magnitude Data'});
save('Lab1_data.mat','T');
writetable(T, 'Lab1_data.txt');
writetable(T,'Lab1_data.xls');

% Task 6: Adjust the discrete signal in order that each sample is rounded up/down in order that it lies exactly upon a quantisation level. %



% Task 7: Use the 'interpl' command to resample the signal by a factor of 2. Ivestigate the differences between 'linear' and 'spline' interpolation. %
