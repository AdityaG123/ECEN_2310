clc
close all
clear all

syms x1 x2 x3

eqn1 = 2*x1 - 4*x2 + 4*x3 == -3;
eqn2 = x1 - 2*x2 + x3 == 5;
eqn3 = x1 - 4*x2 + 6*x3 == 10;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x1, x2, x3])

sol = solve([eqn1, eqn2, eqn3], [x1, x2, x3]);
x1 = vpa(sol.x1,9)
x2 = vpa(sol.x2,9)
x3 = vpa(sol.x3,9)

check = abs((2*x1 - 4*x2 + 4*x3) - (-3))<10.^(-9)
check2 = abs((x1 - 2*x2 + x3) - (5))<10.^(-9)
check3 = abs((x1 - 4*x2 + 6*x3) - (10))<10.^(-9)