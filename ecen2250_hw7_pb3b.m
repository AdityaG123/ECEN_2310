% Problem 3b

clc
close all
clear all

syms t;
I0 = 0.200;
IL = (-0.2*exp(t.*-2000));
VL = (50*10^(-6))*(diff(IL));
PL = (IL*VL)
fplot(PL, [-0.001 0.001])
hold on
xlabel('t (seconds)')
ylabel('P(t) (mW)')
title('Power from Inductor')