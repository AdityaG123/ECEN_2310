clc
clear all
close all

VDC = [0 0.5 1 1.5 2 2.5 3 4 5 6 7 7.5 8 9 10];
IDC = [0 0.129 0.128 0.135 0.15 0.167 0.182 0.185 0.185 0.192 0.2 0.2 0.204 0.21 0.22];
Fenc = [0 0 0 160 230 300 370 445 600 770 890 930 1000 1150 1340];

Rm = (4.21+3.61+3.68)/3;
w = 2*pi.*Fenc./(13*51)

figure('Name','Fenc');
hold on
title('Input voltage versus the output current');
plot(VDC, IDC, '-o', 'Color', 'r');
legend('IDC');
xlabel('VDC (V)');
ylabel('IDC (A)');
hold off

figure('Name','Fenc');
hold on
title('Input voltage versus the output encoder frequency');
plot(VDC,Fenc, '-x', 'Color', 'b');
legend('Fenc');
xlabel('VDC (V)');
ylabel('Fenc (Hz)');
hold off

figure('Name','w');
hold on
title('Input voltage versus the output angular frequency');
plot(VDC,w, '-o', 'Color', 'g');
legend('w');
xlabel('VDC (V)');
ylabel('w (rads/s)');
hold off

k = (VDC-Rm.*IDC)./w;
kavg = sum(k(4:15))./12
b = [kavg.*IDC]';
A = [w;ones(1,15)]';
Val = A\b;
B = Val(1)
Tint = Val(2)
dv_dt = 10/(288*10^(-3));
dw_dt = dv_dt/kavg;
J = (B*(10/kavg)+Tint)/(dw_dt)
