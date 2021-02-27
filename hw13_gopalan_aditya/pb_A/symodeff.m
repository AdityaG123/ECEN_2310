clc
close all
clear all

syms x t g
x = dsolve('diff(x(t), t, t) = g', 'x(0)=10', 'D(x)(0)=0')
x = subs(x,g,9.81)
fplot(@ (t) (981*t.^2)/200+10, [0 2])
xlabel('Values of t');
ylabel('Values of x');
title('Graph of t verses x');