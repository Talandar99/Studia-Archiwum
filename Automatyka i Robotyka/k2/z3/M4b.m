clear
clc
close
%uzyskana funkcja operaatorowa
num = [-2 0]
den = conv([1 1],[1 5 6])
printsys(num, den)

%wyznaczenie parametrów opisujących funkcje elementarnych
[r,p,k] = residue(num,den)

%wykreślenie rozwiązania
t = [0:0.01:10]';
y = 3*exp(-3*t)-4*exp(-2*t)+1*exp(-1*t);

ya = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) + r(3)*exp(p(3)*t);

%% Rozwiązanie równania metodą różniczkowego metodą numeryczną
name_d1 = "M3b.mdl";
open_system(name_d1)

out = sim(name_d1, 10)
tS = out.simout.time;
yS = out.simout.data;

% Wykresy rozwiązań
id=figure;
plot(t,y,"LineWidth",1)
hold on
plot(tS,yS,"k-","LineWidth",2)
xlabel('t[s]')
ylabel('y(t) [-]')
title('Rozwiązanie równania różniczkowego')
hold off
grid on