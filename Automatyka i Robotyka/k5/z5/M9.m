clear;
clc;

% zadane wskazniki jakosci
to = 1;
Mrdb = 2;

% wyznaczenie parametrów (zeta, wn) wzorcowego ukladu II rzedu
Mr = 10^(Mrdb/20)
Wzeta = [-4 0 4 0 -1/Mr^2]
rzeta = roots( Wzeta)

zeta = rzeta(4)
wn = (1+0.7*zeta) / to

% sprawdzenie poprawnosci wyznaczonych wartosci zeta i wn
tos = (1+0.7*zeta) / wn
Mrs = 1/(2*zeta*sqrt(1-zeta^2))
Mrdbs = 20*log10(Mrs)

%wyznaczenie parametrow K1 i K2 projektowanego ukladu
K1 = wn^2
K2 = (2*zeta*wn + 1) / K1
