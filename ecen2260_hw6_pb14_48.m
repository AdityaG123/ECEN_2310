clc
close all
clear all

a = ((119405^2)*(55606^2))/sqrt(2);
b1 = [1 (0.1785*119405) (119405^2)];
b2 = [1 (0.9276*55606) (55606^2)];

B = conv(b1, b2);
f = tf(a, B);
bodemag(f)
grid on