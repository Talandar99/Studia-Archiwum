clear
close all
t = [0:0.01:4];
y = exp(-2*t).*sin(3*t+15*pi/180);
id1 = figure(1)
plot( t, y, 'k-')
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on