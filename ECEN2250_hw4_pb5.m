clc
clear all

% Problem 5

% (a)
disp("Part A");
syms i1 v1;
VTH = 3;
RTH = 10;

A = [((VTH-v1)/RTH)-i1 == 0, (exp(10*v1)-1)/(10^12)-i1 == 0];
solve = solve(A, [i1 v1]);

voltage = (double(solve.v1))
current = (double(solve.i1))

% (b)
disp("Part B");
v = linspace(0, 3, 1000);
led = 10.^(-12).*(exp(10.*v)-1);
source = 3./10-v./10;
plot(v, led);
hold on;
plot(v, source);
xlim([ 0 3 ]);
ylim([0 .31]);
diff = find(abs(led-source) <= (0.0009));
legend('LED', 'Source');
disp("The voltage acress the LED is: ");
voltage = v(diff)
current = led(diff)
hold offsn
