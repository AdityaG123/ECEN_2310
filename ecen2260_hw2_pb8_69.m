clc
close all
clear all

Vs = [-24;24];
Z = [30+40i -20-10i; -20-10i 50+30i]
I = Z\Vs
Ia = I(1);
Ib = I(2);