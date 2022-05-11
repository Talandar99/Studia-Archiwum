t = [0:0.01:10];
y = 1.64*exp(-3*t)+0.8*cos(4*t+((216.9*pi)/180))
id1 = figure(1)
plot(t,y)
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on