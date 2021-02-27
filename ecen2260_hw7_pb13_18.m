clc
close all
clear all

syms t

A = 1;
T0 = 1/50;
n = 1:31;

a0 = A/pi;
for i = 1:length(n)
    if mod(i, 2) == 0
        an(i) = 4*(A/pi)*(1/(1-i.^2));
    else
        an(i) = 0;
    end
end

bn = zeros(size(an));
bn(1) = A/2;

cnt = cos(2*pi*n*t/T0);
snt = sin(2*pi*n*t/T0);

N = 6;
ft1 = a0 + an(1:N) * cnt(1:N)' + bn(1:N) * snt(1:N)';
tt1 = 0:T0/500:2*T0;
ftt5 = subs(ft1,t,tt1);

figure
plot(tt1, ftt5, 'b', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 16)
ylabel('v(t)', 'FontSize', 16)
title('dc+harmonics (N=6)', 'FontSize', 16)
grid on

N = 1;
ft2 = a0 + an(1:N) * cnt(1:N)' + bn(1:N) * snt(1:N)';
tt2 = 0:T0/500:2*T0;
ftt6 = subs(ft2,t,tt2);

figure
plot(tt2, ftt6, 'r', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 16)
ylabel('v(t)', 'FontSize', 16)
title('dc+harmonics (N=1)', 'FontSize', 16)
grid on

N = 5;
ft3 = a0 + an(1:N) * cnt(1:N)' + bn(1:N) * snt(1:N)';
tt3 = 0:T0/500:2*T0;
ftt7 = subs(ft3,t,tt3);

figure
plot(tt3, ftt7, 'g', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 16)
ylabel('v(t)', 'FontSize', 16)
title('dc+harmonics (N=5)', 'FontSize', 16)
grid on

N = 11;
ft4 = a0 + an(1:N) * cnt(1:N)' + bn(1:N) * snt(1:N)';
tt4 = 0:T0/500:2*T0;
ftt8 = subs(ft4,t,tt4);

figure
plot(tt4, ftt8, 'k', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 16)
ylabel('v(t)', 'FontSize', 16)
title('dc+harmonics (N=11)', 'FontSize', 16)
grid on

N = 21;
ft5 = a0 + an(1:N) * cnt(1:N)' + bn(1:N) * snt(1:N)';
tt5 = 0:T0/500:2*T0;
ftt9 = subs(ft5,t,tt5);

figure
plot(tt5, ftt9, 'm', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 16)
ylabel('v(t)', 'FontSize', 16)
title('dc+harmonics (N=21)', 'FontSize', 16)
grid on
