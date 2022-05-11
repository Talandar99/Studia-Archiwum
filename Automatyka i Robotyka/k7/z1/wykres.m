clear
close all
%% generowanie danych do wykresu
t=[0:0.01:4];
y=exp(-2*t).*sin(3*t);
%% tworzenie wykresu
id1=figure(1)
plot(t, y, 'k-')
xlabel('t [s]')
ylabel('y(t)')
title('Wykres funkcji')
grid on

%% generowanie nowych danych 1
y1 = exp(-0.5*t).*cos(2*t)

id2 = figure
plot(t, y1, 'r-')

%% generowanie nowych danych 2
y2 = cos(5*t)
figure(id2)
hold on
plot(t, y2, 'b-')
hold off
