clear; 
clc;

% zadane wskazniki jakosci

tr = 4
wr = 1

% wyznaczanie parametru wzorcowego ukladu drugiego rzedu

a = (wr*tr/4)^2
zeta = 1/sqrt(a+2)

wn = 4/(zeta*tr)

% sprawdzenie poprawnosci wyznaczonych parametrow: zeta i wn

trs = 4/(zeta*wn)
wrs = wn*sqrt(1-2*zeta^2)

% poszukiwane wartosci parametrow

K = wn^2
alfa = 2*zeta*wn - 1

% bieguny tranmitancji wzorcowej 
Msw = roots([1 2*zeta*wn wn^2])


