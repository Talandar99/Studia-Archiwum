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
id=figure;
plot(tS,yS,"k-","LineWidth",2)
xlabel('t[s]')
ylabel('y(t) [-]')
idt = title('Rozwiązanie równania różniczkowego')
set(idt, 'FontWeight', 'normal')
grid on
set(id, 'color', [1 1 1])

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