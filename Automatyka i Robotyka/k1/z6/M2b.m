clear
clc
close

tmax = 6;

%% Rozwiązanie równania metodą różniczkowego metodą numeryczną
name_d1 = "M3b.mdl";
%open_system(name_d1)

out = sim(name_d1, tmax)
tS = out.simout.time;
yS = out.simout.data;

% Wykresy rozwiązań
id1=figure;
plot(tS,yS,"k-","LineWidth",2)
xlabel('t[s]')
ylabel('y(t) [-]')
idt = title('Rozwiązanie równania różniczkowego')
set(idt, 'FontWeight', 'normal')
grid on
set(id1, 'color', [1 1 1])

%MATLAB (1)
%%Wyznaczanie równania różnicowego metodą Eulera w przód (ang. forward)

T = 0.1; %Okres próbkowania

%Współczynniki równiana różnicowego

a1 = -2 + 5*T
a0 = 1 - 5*T + 6*T^2
b0 = 2*T^2
r = exp(-T)

%MATLAB (2)
%Warunki początkowe
y0 = 0
y1 = -2*T + y0

%MATLAB(3)
%Rozwiązanie równania różnicowego metodą rekurencyjną
tk(1) = 0*T; yk(1) = y0;
tk(2) = 1*T; yk(2) = y1;

N = tmax/T;
for k = 1:N-1
    tk(k+2) = (k+1)*T;
    yk(k+2) = -a1*yk(k+1) - a0*yk(k) + b0*r^(k-1);
end

hold on
plot( tk, yk, 'bo', 'LineWidth', 1)
hold off

id2 = figure;
stem( tk, yk, 'LineWidth', 1)

%MATLAB (4)
%%Wyznaczanie równania różnicowego metodą Eulera wstecz (ang. backward)

T = 0.1; %Okres próbkowania

%Współczynniki równiana różnicowego
M = 1 + 5*T + 6*T^2
a1b = (-2 - 5*T)/M
a2b = 1/M
b0b = 2*T^2/M

%MATLAB (5)
%Warunki początkowe
y0 = 0
y1 = -2*T + y0

%Rozwiązanie równania różnicowego metodą rekurencyjną
tkb(1) = 0*T; ykb(1) = y0;
tkb(2) = 1*T; ykb(2) = y1;

N = tmax/T;
for k = 3:N-1
    tkb(k) = (k-1)*T;
    ykb(k) = -a1b*ykb(k-1) - a2b*ykb(k-2) + b0b*r^(k-3);
end

figure(id1)
hold on
plot( tkb, ykb, 'k*', 'LineWidth', 1)
hold off

id3 = figure;
stem( tkb, ykb, 'LineWidth', 1)
title('Metoda Eulera wstecz')
grid on