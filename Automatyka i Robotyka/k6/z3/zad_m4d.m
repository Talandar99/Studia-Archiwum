clear
clc
close

tmax =10;
%% Rozwiązanie wykonia różniczkowego w simulinku (metodą numeryczną)
name_mdl = 'M3d';
%open_system(name_mdl)
out = sim(name_mdl, tmax)

tS= out.simout.time;
yS= out.simout.data;

figure
plot(tS,yS, 'b-', 'LineWidth',4)
axis([0 tmax 0 1.1])
grid on

%% Rozwiązanie wykonia różniczkowego przy użyciu rachunku laplace'a
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

hold on
plot(t, yb, 'r-','LineWidth', 2)
hold off

%%
%figure
%plot(t, ya, "LineWidth", 1)
%xlabel("t[s]")
%ylabel("y(t)")
%axis([0 10 0 1.1])
%grid on


