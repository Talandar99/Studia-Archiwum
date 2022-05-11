clear
clc
close

tmax = 6;

%% Rozwiązanie równania metodą różniczkowego metodą numeryczną
name_d1 = "M3b.mdl";
open_system(name_d1)

out = sim(name_d1, 10)
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