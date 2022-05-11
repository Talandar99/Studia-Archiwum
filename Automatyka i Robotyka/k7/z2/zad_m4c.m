clear
clc
close

% wyznaczone wspolczynniki funkcji operatorowej 
num = 4 * [1 1]
den = conv(conv([1 2], [1 3]), [1,3])
printsys(num, den, 's')

% wyznaczanie parametrow rozkladu funkcji operatorowej 
[r, p, k] = residue(num, den)
roots(den)

% tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.01:5]';
y = 4*exp(-3*t)+8*t.*exp(-3*t)-4*exp(-2*t);

figure
plot(t, y, "LineWidth", 2)
xlabel("x(t)")
ylabel("y(t)")
axis([0 4 0 0.45])
grid on