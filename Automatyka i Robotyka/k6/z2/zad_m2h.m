clear
clc
close

% wyznaczone wspolczynniki funkcji operatorowej 
num = 1
den = conv(conv([1 1 0], [1 0.5]), [1 0.5])
printsys(num, den, 's')

% wyznaczanie parametrow rozkladu funkcji operatorowej 
[r, p, k] = residue(num, den)
roots(den)

% zmiana postaci liczby zespolonej
%M = abs( r(1))
%phi = angle(r(1))*180/pi
%A = 2*M

% tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.01:20]';
ya = -4*exp(-t) -4*t.*exp(-0.5*t) +4;
yb = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) +r(3)*exp(p(3)*t) +r(4)*exp(p(4)*t);


figure
plot(t, ya, "LineWidth", 1)
xlabel("t[s]")
ylabel("y(t)")
%axis([0 10 0 1.1])
grid on

