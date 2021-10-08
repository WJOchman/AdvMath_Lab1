clear % clears the memory % 
clc % clears the screen%

% Task 1: Construction of continuous time signal %

start = 0;
increment = 0.001;
stop = 0.666;
t = start : increment : stop; 

x_c = sin(2*pi*3*t);


% t = time (s) %
% x_c = continuous %

% Task 2: Plotting of continous time signal %

plot (t, x_c, 'LineWidth', 2); 
ylim([-1.1 1.1]);
[t] = title('Time vs. Magnitude', 'Color', 'black', 'FontWeight','bold');
t.FontSize = 16;
[x] = xlabel('Time (s)', 'color', 'black', 'FontWeight','bold');
[y] = ylabel('Magnitude', 'color', 'black', 'FontWeight','bold');
x.FontSize = 14;
y.FontSize = 14;
grid on; 

% The tick marks must be 14 font, bold, gca?? %

% Task 3: Continuous time to discrete converstion %



% Task 4: Displaying Results %



% Task 5: Data Handling %


% Task 6: Adjust the discrete signal in order that each sample is rounded up/down in order that it lies exactly upon a quantisation level. %


% Task 7: Use the 'interpl' command to resample the signal by a factor of 2. Ivestigate the differences between 'linear' and 'spline' interpolation. %
