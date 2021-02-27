t=0:(pi/100):(10*pi);
x1 = (exp(-t/3)).*cos(3*t);
y1 = (exp(-t/10)).*sin(t) + 1;
plot(x1,y1)