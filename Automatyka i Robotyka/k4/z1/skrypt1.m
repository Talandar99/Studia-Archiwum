clear
close all
t = [0:0.01:3];
y = 0.2 + 5.441 .* exp(-2*t) .* cos(t + 126*pi/180);
id1 = figure(1)
plot(t,y,'k-')
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on