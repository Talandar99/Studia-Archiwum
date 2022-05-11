clear
clc

%MATLAB(2)
%wymagania nakładane na projektowany układ
MrdB = 3;
BW = 5

%wyznaczanie wartości bezwzględnej modułu
Mr = 10^(MrdB/20)

%MATLAB(3)
%wyznaczanie współczynnika tłumienia
Wzeta = [-4 0 4 0 -1/Mr^2]
rzeta = roots(Wzeta)
zeta = rzeta(4)

%MATLAB(4)
%wyznaczanie częstotliwości drgań własnych
Wn = BW/(sqrt((1-2*zeta^2)+sqrt(4*zeta^4 - 4*zeta^2 + 2)))

%poszukiwanie wartości wzmocnień projektowanego układu
K1 = Wn^2
K2 = 2*zeta*Wn

%sprawdzenie wyznaczonych parametrów

