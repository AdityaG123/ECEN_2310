% Aditya Gopalan ECEN 2310 Homework #2
% Exercise 9.6

close all
sampleTimes = (0: 8191)/8192;
midA = tone1(1,440);
length(sampleTimes(1:10*ceil(8192/440)))
length(midA(1:10*ceil(8192/440)))
t = sampleTimes(1:10*ceil(8192/440));
% Same part as Problem 9.5
plot(t,midA(1:10*ceil(8192/440)), 'b');
sound(midA)
hold on;
% Plotting the sine wave of the midA
pause
% This is the plot of the midA sound
plot(t,2*midA(1:10*ceil(8192/440)), 'g');
sound(2*midA)
hold on;
pause
% This will plot and play the sound of the midA that is twice the
% frequency of the 440Hz
plot(t,exp(-3*t).*midA(1:10*ceil(8192/440)), 'k');
sound(10*exp(-3*sampleTimes).*midA)
hold on;
pause
% This will make the sound of the one dampened beat
plot(t,cos(10*t).*midA(1:10*ceil(8192/440)), 'r');
sound(10*cos(10*sampleTimes).*midA)
hold off;
% This will cause the pulsing sound to play