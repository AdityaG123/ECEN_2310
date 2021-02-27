clc
close all 
clear all

R = 500;
C = (1/10) * 10.^(-6);
t = linspace(0, 500*6*(1/10)*10.^(-6));

vn = -10*exp(-t/(R*C));
vf = 10;
vtot = vn + vf;

figure
plot(t, vn, '-b', 'LineWidth', 2)
hold on
grid on
plot(t, 10*ones(1, 100), '-r', 'LineWidth', 2)
hold on
plot(t, vtot, '-g', 'LineWidth', 2)
hold on

legend('Natural', 'Forced', 'Total');
xlabel('Time (s)');
ylabel('Voltage (V)');