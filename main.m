clc
close all
clear all

%% Problem Data
L = 20;
N = 2;

for k = 1:N
    beam(k).w = 0.4;  % width
    beam(k).h = 0.5;  % height
    beam(k).l = 20;   % length
    beam(k).E = 30e6;

    beam(k).A = beam(k).w * beam(k).h;
    beam(k).I = beam(k).w * beam(k).h^3/12;
end

x = linspace(0, L, N+1)';
y = zeros(N+1, 1);

figure
plot(x, y, '-o')
hold on
axis equal

f = [0 -1e2 0]';



%% Computations
%Compute Stiffness Matrix
K = stiffMat(beam, N);

%Eliminate Constrained Nodes
K = K(4:end, 4:end);
% Ke(1:3,:) = [];
% Ke(:,1:3) = [];

u = K\f;


%% Post Processing
figure
plot(x,y, '-o')
hold on
plot(x + [0;u(1:3:end)], y + [0;u(2:3:end)], '-or')
axis equal

