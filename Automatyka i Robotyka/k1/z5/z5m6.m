clc;
clear;

% zadane wskazniki jakosci

Mp = 14/100
BW = 4

% wyznaczanie parametru wzorcowego ukladu drugiego rzedu

zeta = -log(Mp)/sqrt(pi^2+log(Mp)^2)
wn = BW / sqrt(1-2*zeta^2 + sqrt(4*zeta^4-4*zeta^2+2))

% sprawdzenie poprawnosci wyznaczonych parametrow: zeta i wn

Mpp = exp(-pi*zeta/sqrt(1-zeta^2)) *100
BWs = wn * sqrt(1-2*zeta^2 + sqrt(4*zeta^4-4*zeta^2+2))

%parametry projektowanego ukladu

K = wn^2
alfa = 2*zeta*wn-1



















