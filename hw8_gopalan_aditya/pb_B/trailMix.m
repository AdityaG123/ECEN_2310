clc
close all
clear all

syms p a c;

lower = [0 0 0];
upper = [40 25 20];

A = [0.75 -0.25 -0.25; 0.4 0.4 -0.6; 1 1 1];
b = [0 0 100];
f = [-6 -4.5 -3]; %maximize the negative or minimize

[profit, exitflag] = linprog(f, A, b, [], [], lower, upper);

if(exitflag)
    p = profit(1)
    a = profit(2)
    c = profit(3)
else
    disp("Something went wrong")
end
