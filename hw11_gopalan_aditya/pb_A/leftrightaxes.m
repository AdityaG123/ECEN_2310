clc 
close all
clear all

t = linspace(0,10);
y = sin(pi*t); 
yyaxis left
plot(t,y, '-b')
grid on;
hold on;

z = cos(2*pi*t).*exp(-t); 
yyaxis left
plot(t,z, '-r')
hold on;
ylabel('f1(t),f2(t)')

u=20*sqrt(t);
yyaxis right
plot(t,u, '-g')
hold on;

ylim([0 70])
xlabel('t')
ylabel('g(t)')
title('Dual-axis plot')
legend('y(t)', 'z(t)', 'u(t)');
hold off;