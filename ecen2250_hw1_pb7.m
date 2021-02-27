% Aditya Go = palan ECEN 2250 HW 1
% Problem 7
% Part A
V = -2:0.1:3;
I = exp(V)-10;
axes()
plot(V, I)
hold on
xlabel('V (V)')
ylabel('I (A)')
hold off

%Part B
V = [-2 2 3];
power = V.*(exp(V)-10)

%Part C
p = @(x) x.*(exp(x)-10);
v0 = -2;
y0 = fzero(p, v0)
v1 = 2;
y1 = fzero(p, v1)

%Part D
y1 = integral(p, -2, 0);
y2 = integral(p, 2.306, 3);
y = y1 + y2