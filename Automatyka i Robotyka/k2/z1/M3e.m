clear
close all
t = [0:0.01:10];
y = 2+sqrt(5*exp(-t)).*cos(2*t+153*pi/180);
id1 = figure(1)
plot( t, y, 'k-')
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on