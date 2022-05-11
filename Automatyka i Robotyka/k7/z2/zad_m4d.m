clear
clc
close

% wyznaczone wspolczynniki funkcji operatorowej 
num = [10]
den = [1 2 5 0]
printsys(num, den, 's')

% wyznaczanie parametrow rozkladu funkcji operatorowej 
[r, p, k] = residue(num, den)
roots(den)

% zmiana postaci liczby zespolonej
M = abs( r(1))
phi = angle(r(1))*180/pi
A = 2*M

% tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.01:10]';
y = 2.2361*exp(-t).*cos(2*t+153.4349)+2;

figure
plot(t, y, "LineWidth", 2)
xlabel("x(t)")
ylabel("y(t)")
axis([0 4 -3 1])
grid on