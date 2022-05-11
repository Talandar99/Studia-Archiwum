clear
clc
%#ok<*NOPTS> 

tp = 1
tr = 2

a = pi*tr/(4.6*tp)

zeta = 1 / sqrt(a * a + 1)

wn = pi/(tp * sqrt(1 - (zeta * zeta)))

tps = pi / (wn * sqrt(1 - (zeta * zeta)))
trs = 4.6 / (zeta * wn)

K1 = wn * wn
K2 = 2*zeta*wn - 1