clear
clc
close
% wyniki z simulinka - rozwiazanie numeryczne rownania rozniczkowego

tmax = 10;
name_mdl = 'zad_M3a_mdl' ;
open_system(name_mdl)
out = sin(name_mdl, tmax)

tS = out.sinout.time;
yS = out.sinout.data;

% wyznaczone wspolczynniki funkcji operatorowej 
num = [1 4 2]
den = [1 5 4 0]
printsys(num, den, 's')

% wyznaczanie parametrow rozkladu funkcji operatorowej 
[r, p, k] = residue(num, den)
roots(den)

% tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.1:tmax]';
ya = 0.1667*exp(-4*t)+0.3333*exp(-t)+0.5;

yb = r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t)+r(3);


figure
plot(tS, yS, "LineWidth", 1)
hold on
plot(t, yb, "k-", "LineWidth", 2)
hold off
xlabel("x(t)")
ylabel("y(t)")
grid on
axis([0 10 0 1])