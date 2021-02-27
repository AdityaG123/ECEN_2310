clc
close all
clear all

Io = 10^(-12);
Vs = 3;
R = 10^3;
Vt = 1.3806488 * 10.^(-23) * 300/(1.602176565 * 10.^(-19));
i1 = @(V1) Io.*(exp(V1./Vt) - 1);
i2 = @(V2) V2./R;
func = @(V1) i1(V1) - i2(Vs-V1);
[sol, fval, exitfunc] = fsolve(func, [0 0]);
fprintf("V1 is %d, V2 is %d, and current is %d\n", sol(1), Vs(1) - sol(1), i1(sol(1)));
if(exitfunc == 0)
    disp("This has failed");
end
if(exitfunc)
    plot(0:0.01:0.6, i1(0:0.01:0.6));
    hold on
    plot(0:0.01:0.6, i2(Vs(1) - (0:0.01:0.6)));
    plot(sol(1), i1(sol(1)), 'o');
    hold off
end
fprintf("The power dissipated through the resistor = %d Watts\n", (Vs(1) - sol(1)) .*i2(Vs(1) - sol(1)));
fprintf("The power dissipated through the diode = %d Watts\n", (sol(1)) .*i1(sol(1)));
fprintf("The power dissipated through the diode without resistor = %d Watts\n", i1(Vs).*Vs);