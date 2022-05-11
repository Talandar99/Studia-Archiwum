clear
clc
close all

tmax = 10;

name_mdl = 'model2';
open_system(name_mdl)
out = sim(name_mdl, tmax)

tS = out.simout.time;
yS = out.simout.data;

id = figure;
plot(tS, yS, 'LineWidth', 1)
grid on

%Dyskretyzacja metoda Eulera w przod
T = 0.1; %okres probkowania
%T = 0.01;

%wspolczynniki rownania
a1 = -2 + 2*T
a0 = 1 - 2*T + 2*T^2
b0 = T^2
theta = 2*T

%warunki poczatkowe
y0 = 2
y1 = -3*T + y0

%rozwiazanie rownania roznicowego metoda bezposrednia rekurencyjna
tk(1) = 0*T;    yk(1) = y0;
tk(2) = 1*T;    yk(2) = y1;

N = tmax / T;

for k = 1:N-1
    tk(k+2) = (k+1)*T;
    yk(k+2) = -a1*yk(k+1) - a0*yk(k) + b0*sin(theta*(k-1));
end

hold on
plot(tk,yk,'ko')
hold off

figure
stem(tk,yk,'LineWidth', 1)

%Dyskretyzacja metoda Eulera wstecz

%wspolczynniki
M = 1 + 2*T + 2*T^2
a1b = (-2 -2*T)/M
a2b = 1/M
b0b = T^2 / M
theta = 2*T

%rozwiazanie rownania roznicowego metoda bezposrednia rekurencyjna
tkb(1) = 0*T;    ykb(1) = y0;
tkb(2) = 1*T;    ykb(2) = y1;

N = tmax / T;

for k = 3:N-1
    tkb(k) = (k-1)*T;
    ykb(k) = -a1b*ykb(k-1) - a2b*ykb(k-2) + b0b*sin(theta*(k-3));
end

figure(id)
hold on
plot(tkb,ykb,'b*')
hold off

figure
stem(tk,yk,'LineWidth', 1)
