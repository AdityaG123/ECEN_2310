clc
close all
clear all

[a,b] = meshgrid(0:0.001:1, 0:0.001:1);
c = a + b - (a.^3 + b.^3); 
grid on;
contourf(a, b, c)
[C, h] = contourf(a, b, c);
clabel(C, h)
xlabel('\alpha')
ylabel('\beta')
title('\alpha + \beta - (\alpha^3 + \beta^3)');
colorbar
maxa = max(max(a));
maxb = max(max(b));
maxz = max(max(c));
text(maxa, maxb, ['\bullet', num2str(maxz)])