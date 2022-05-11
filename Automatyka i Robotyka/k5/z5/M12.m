clear;
clc;

% zadane wskazniki jakosci
wr = 3;
BW = 6;

% wyznaczenie parametrów (zeta, wn) wzorcowego ukladu II rzedu
a = BW / wr;
b = a^2 - 1
Wzeta = [(4*b^2-4) 0 (4-4*b^2) 0 (b^2-2)]
rzeta = roots( Wzeta)

zeta = rzeta(4)
wn = wr/sqrt(1-2*zeta^2)

% sprawdzenie poprawnosci wyznaczonych wartosci zeta i wn
wrs = wn*sqrt(1-2*zeta^2)
BWs = wn*sqrt(1-2*zeta^2) + sqrt(4*zeta^4-4*zeta^2+2)

%wyznaczenie parametrow K1 i K2 projektowanego ukladu
K1 = wn^2
K2 = (2*zeta*wn + K1) / K1
