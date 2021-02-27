clc
close all
clear all

t = linspace(0, pi, 50);
sum = 0;
for j = 1:12
    n = 2*j-1;
    for n = 1:23
        H = (60*200*n)./(sqrt((360000-(200*n).^2).^2)*((60*200*n).^2));
        r = 120/(n*(pi.^2));
        T = r.*H;
        E = T.*cos(200*n.*t);
end
sum = sum + E;
end

figure
plot(t, sum)
xlabel('time');
ylabel('fourier series');