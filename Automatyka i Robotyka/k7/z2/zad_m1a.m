clear
clc
close

% wyznaczone wspolczynniki funkcji operatorowej 
num = [1 0]
den = [1 2]
printsys(num, den, 's')

% wyznaczanie parametrow rozkladu funkcji operatorowej 
[r, p, k] = residue(num, den)
roots(den)

% tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.1:3]';
y = -2 * exp(-2*t);

figure
plot(t, y, "LineWidth", 2)
xlabel("x(t)")
ylabel("y(t)")
axis([0 4 -3 1])
grid on