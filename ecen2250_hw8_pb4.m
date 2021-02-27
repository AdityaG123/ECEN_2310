%ECEN 2250 Homework 8 - Problem 4

clc
close all
clear all

t = 0:0.00001:5;
figure

v1 = 14.9251*cosd(50*t - 5.71); %cosd means cosine of degrees
plot(t, v1, '-b', 'LineWidth', 2)
ylabel('Voltage (V)')
xlabel('Time (s)')
grid on
hold on;

v2 = 10.6066*cosd(500*t - 45);
plot(t, v2, '-g', 'LineWidth', 2)
hold on;

v3 = 1.4925*cosd(500*t - 84.29);
plot(t, v3, '-r', 'LineWidth', 2)
legend('V1', 'V2', 'V3')