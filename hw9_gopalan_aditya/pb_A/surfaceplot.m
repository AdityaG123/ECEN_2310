clc
close all
clear all

x = 0: .05: 1;
y = x;

[X,Y] = meshgrid(x,y);
Z = X + Y - (X.^2+Y.^2);
surf(X,Y,Z)
title('x + y - (x^2 + y^2)')
colormap(spring)
colorbar