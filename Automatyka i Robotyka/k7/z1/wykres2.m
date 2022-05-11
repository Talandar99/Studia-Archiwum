
clear 
close all

%% generowanie danych do wykresu
t=[0:0.01:4];
y=10+5*exp(-t).*cos(2*t+0.5)

%% tworzenie wykresu
id1 = figure(1)
plot(t, y, 'b-')
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on