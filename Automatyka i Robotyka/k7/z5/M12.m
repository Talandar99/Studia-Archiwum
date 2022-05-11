clear
clc

%wymagania jakosciowe nakladane na projektowany uklad 

wr = 3;
BW = 6;

%wyznaczanie zeta i wn

a = (BW/wr)^2
a4 = (2-2*a)^2-4
a2 = 2*(2-2*a)*(a-1)+4
a0 = (a-1)^2 - 2

Wzeta = [a4 0 a2 0 a0]
rzeta = roots(Wzeta)

%parametry ukladu wzorcowego
zeta = rzeta(4)
wn = wr/sqrt(1-2*zeta^2)


%sprawdzenie wyznaczonych parametrow

wrs = wn*sqrt(1-2*zeta^2)
Bws = wn*sqrt(1-2*zeta^2 + sqrt(4*zeta^4 - 4*zeta^2 +2))


%wyznaczanie parametrow projektowanego ukladu

K1 = wn^2
K2 = (2*zeta*wn+K1)/K1