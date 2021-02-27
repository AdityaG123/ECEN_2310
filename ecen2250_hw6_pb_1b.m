% Homework 6 - Problem 1b

clc
close all 
clear all

%% Part (i)
t = -2: 0.5: 12;
S = 0;
for n = 0:8
    S = S+(exp(-t).*dirac(t-n));
end
f = (S);
idx = f == Inf;
f(idx) = 2;
figure
stem(t,f)
hold on
axis([-5 12 -0.5 2])
xlabel('t (seconds)')
ylabel('V (Volts)')
title('V6(t) as a function of time')
hold off

%% Part (ii)
v7 = dirac(t-4) - 2*dirac(t-6) + dirac(t-9) + t.*dirac(t-10) + dirac(t-10);
idk = v7 == Inf;
idy = v7 == -Inf;
v7(idy) = -2;
v7(idk) = 2;
figure
stem(t, v7)
hold on
xlabel('t (seconds)')
ylabel('V (volts)')
title('V7(t) as a function of time')
hold off

%% Part (iii)
v8 = @(a) (20 + 10*cos(a.*120*pi) - 10*sin(a.*120*pi) + 4*sin(a.*500*pi));
a = -pi/120:0.0001:pi/120;
figure
plot(a, v8(a))
hold on
xlabel('t (seconds)')
ylabel('V (volts)')
title('V8(t) as a function of time')
hold off

