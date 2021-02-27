clc
close all
clear all

numerator = 32*10^6;
denominator = [1 20000 16*10^6];
sys = tf(numerator, denominator);
bodemag(sys)
grid on