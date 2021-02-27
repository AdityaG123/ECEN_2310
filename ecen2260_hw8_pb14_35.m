clc 
close all 
clear all

numerator = 1000^5;
f1 = [1 1000];
f2 = [1 618 1000^2];
f3 = [1 1618 1000^2];
denominator = conv(conv(f1,f2),f3);
sys = tf(numerator, denominator);
bodemag(sys)
grid on