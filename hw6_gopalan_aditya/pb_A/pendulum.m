clc
close all
clear all

startT = 0;
stopT = 10;

initialVector = [pi/2, -pi];
options = odeset('RelTol', 1e-4, 'AbsTol', 1e-4, 'InitialStep', stopT/1e3, 'MaxStep', stopT/1e3);
[t,y] = ode45(@pendulumcalc, [startT, stopT], initialVector, options);

subplot(2, 1, 1)
plot(t, y(:,1), '-', 'LineWidth', 1, 'color' , 'r');
hold on;
plot(t, y(:,2), '-', 'LineWidth', 1, 'color' , 'b');
legend('\theta(t)', 'd\theta/dt(t)', 'outside');
title('Anglular Displacement/Velocity vs. time');
grid on;
ylabel('angular displacement/velocity');
xlabel('time');

subplot(2, 1, 2)
plot(y(:,1), y(:,2), '-', 'LineWidth', 1);
grid on;
xlabel('\theta(t)');
ylabel('d\theta/dt(t)');
title('Phase Plot');
hold off;
