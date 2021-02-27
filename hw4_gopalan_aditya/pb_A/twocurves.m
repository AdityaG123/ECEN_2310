clear all
close all
clc

theta = linspace(0, 2*pi, 100000); %define what theta is
r = sin(2*theta); %equation of r
t = linspace(-1000, 1000, 100000); %domain of t
x = (1-t.^2)./(1+t.^2); %equation of x
y = 2.*t./(1+t.^2); %equation of y
figure('Name', '1st Curve - Parametric'); %graphs the first curve which is parametric
polarplot(theta, r);
figure('Name', '2nd Curve - Circle'); %graphs the second curve which is a circle
plot (x,y);