clear
close all
t = [0:0.01:4];
y = exp(-2*t).*sin(3*t);
id1=figure(1);
plot(t, y, 'k-')
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on
id2 = figure(1);
y1=exp(-0.5*t).*cos(2*t);
hold on
plot(t,y1,'r-')
hold off
grid on