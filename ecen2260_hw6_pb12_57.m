clc
close all
clear all

numerator = [1 1010];
denominator = [1 10];
sys = tf(numerator,denominator);
bode(sys) 