function plot_orbit3d(y0, T, s, solve)
% Input:
% y0 - the initial state of the satellite
% T - the maximum time to solve to
% s - the step size (delta -T)
% solve - a function to a solver
% Plots the orbit and the velocity vs. time for the
% satellite system , using the provided solver.
% Solve the system.
sol = solve( @orbit , y0, 0:s:T);

% Clear the plot window.
clf;
% Plot the orbit and the velocity w.r.t. time.
% plot 1: the orbit
subplot(2, 1, 1);
hold on;
title('Position');
xlabel('X');
ylabel('Y');
zlabel('Z');
% central mass
plot3([0], [0], [0], 'or');
% orbit
plot3(sol(1,:), sol(2,:), sol(3,:), '-b');
axis('equal');
% plot 2: the velocity w.r.t. time
v = velocity(sol);
subplot(2, 1, 2);
hold on;
title('Velocity');
xlabel('Time');
ylabel('Absolute velocity');
plot(0:s:T, v, '-b');
end