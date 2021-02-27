clc
close all
clear all

numerator = [10^6 0 0];
f1 = [1 10^5];
f2 = [1 10^5 10^10];
denominator = conv(f1, f2);
sys = tf(numerator, denominator)
bodemag(sys)