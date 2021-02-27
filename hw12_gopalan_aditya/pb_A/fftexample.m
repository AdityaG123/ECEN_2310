clc
close all
clear all

Fs = 8;                   
T = 1/Fs;        
L = 1500;     
t = (0:L-1) * T;

signal = -0.1 + 0.2*sin(2*pi*t) - 0.4*cos(2*pi*t) + 0.3*sin(6*pi*t);
output = fft(signal);

y = abs(output/L);
x = y(1:L/2+1);
x(2:end-1) = 2*x(2:end-1);

f = Fs*(0:(L/2))/L;
plot(f,x)
hold on
grid on
title('Single-Sided Amplitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
hold off

% F(k+1) = sigma(m=0 -> n-1) [f_(m+1)e^(-i*2sin*pi)(k/n)*m