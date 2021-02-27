function dy = pendulumcalc(t,y)
g = 9.8;
l = 1;
x = g/l;
dy = zeros(2,1);
dy(1) = y(2);
dy(2) = -x * x * sin(y(1));
end