clear
clc
%#ok<*NOPTS> 

Mrdb = 3
BW = 5

Mr = 10^(Mrdb / 20)

Wzeta = [-4 0 4 0 -1/Mr^2]
rzeta = roots(Wzeta)
zeta = rzeta(4)

wn = BW / (sqrt((1 - 2*zeta^2) + sqrt(4*zeta^4 - 4*zeta^2 +2)))

K1 = wn^2
K2 = 2*zeta*wn

S1 = wn * sqrt((1 - 2*zeta^2) + sqrt(4*zeta^4 - 4*zeta^2 +2))