clear
clc

%MATLAB(1)
%wymagania nakładane na projektowany układ
tp = 1;
tr = 2;

%wyznaczanie parametrów transmitacji wzorcowej
a = pi*tr/(4.6*tp)
zeta = 1/sqrt(a^2 + 1)
wn = pi/(tp*sqrt(1-zeta^2))

%sprawdzenie wyznaczonych parametrów
tps = pi/(wn*sqrt(1-zeta^2))
trs = 4.6/(zeta*wn)

%poszukiwane wartości wzmocnień projektowanego układu
K1 = wn^2
K2 = 2*zeta*wn - 1
