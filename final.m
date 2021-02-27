clc
close all
clear all

numerator = [-10 0 0];
denominator = [1 1.001*10^7 10^11]
sys = tf(numerator, denominator)
bodemag(sys)