clear
clc
close all
% wyniki z simulinka - rozwiazanie numeryczne rownania rozniczkowego

tmax = 10;
name_mdl = 'zad_M3a_mdl' ;
open_system(name_mdl)
out = sim(name_mdl, tmax)

tS = out.simout.time;
yS = out.simout.data;


id1 = figure
plot(tS, yS, "LineWidth", 1)
hold on
plot(t, yb, "k-", "LineWidth", 2)
hold off
xlabel("x(t)")
ylabel("y(t)")
grid on
axis([0 10 0 1])

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


% okres probkowania
T = 0.1;

% wspolczynniki rownania roznicowego
a2 = -3 + 5*T
a1 = 3 - 10*T + 4*T^2
a0 = -1 + 5*T - 4*T^2
b0 = 2*T^2

% warunki poczatkowe

y0 = 1
y1 = -T+y0
y2 = T^2+2*y1 - y0

% rozwiazanie uzyskanego rownania
tk(1) = 0*T ; yk(1) = y0;
tk(2) = 1*T ; yk(2) = y1;
tk(3) = 2*T ; yk(3) = y2;

N = tmax/T-2;
for k = 1:N
    tk(k+3) = (k+2)*T;
    yk(k+3) = - a2*yk(k+2) - a1*yk(k+1) - a0*yk(k) + b0*0^(k-1);
end

hold on
plot(tk, yk, 'ko')
hold off

figure 
stem(tk, yk, 'LineWidth',1)


%metoda wstecz 

M = 1 + 5*T + 4*T^2
a1b = (-3 -10*T -4*T^2)/M
a2b = (3 + 5*T)/M
a3b = (-1)/M
b0b = 2*T^2/M

tkb(1) = 0*T ; ykb(1) = y0;
tkb(2) = 1*T ; ykb(2) = y1;
tkb(3) = 2*T ; ykb(3) = y2;

N = tmax/T-2;
for k = 1:N
    tkb(k+3) = (k+2)*T;
    ykb(k+3) = - a1b*ykb(k+2) - a2b*ykb(k+1) - a3b*ykb(k) + b0b*0^(k-1);
end

figure(id1)
hold on
plot(tkb, ykb, 'ko')
hold off



