clear
close all
t = [0:0.01:4];
y = 1.64 * exp(-3*t) + 0.8 * cos(4*t + 216.9*pi/180)
id = figure
save funkcja t y
plot( t, y, 'k-')
xlabel('t [s]')
ylabel('y(t)')
title("Wykres funkcji")
grid on
set(id, 'color', [1 1 1])