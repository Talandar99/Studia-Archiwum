clear
clc
close

% wyznaczone wspolczynniki funkcji operatorowej 
num = [1 3 3]
den = [1 4 3 0]
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
ya = 0.5*exp(-3*t) -0.5*exp(-1*t) +1;
yb = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) +r(3)*exp(p(3)*t);


figure
plot(t, ya, "LineWidth", 1)
xlabel("t[s]")
ylabel("y(t)")
axis([0 10 0 1.1])
grid on

