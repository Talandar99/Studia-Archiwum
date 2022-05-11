clear
clc
close

% wyznaczone wspolczynniki funkcji operatorowej 
num = 2 * [1 1]
den = [1 1 2 0]
printsys(num, den, 's')

% wyznaczanie parametrow rozkladu funkcji operatorowej 
[r, p, k] = residue(num, den)
roots(den)

% zmiana postaci liczby zespolonej
M = abs( r(1))
phi = angle(r(1))*180/pi
A = 2*M

% tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.01:12]';
ya = 1.5119*exp(-0.5*t).*cos(1.3229*t-131.4096*pi/180) +1;

sigma=real(p(1))
w= imag(p(1))
yb = A*exp(sigma*t).*cos(w*t+phi*pi/180)+r(3);


figure
plot(t, ya, "LineWidth", 1)
xlabel("t[s]")
ylabel("y(t)")
%axis([0 10 0 1.1])
grid on


