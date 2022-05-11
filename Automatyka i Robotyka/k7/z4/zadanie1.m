clc;
clear;
Gs = tf([1 2], [1 4 3 2 0])
sisotool(Gs)

%kryterium routha
b1 = [0 3*4] - [1 2]
c1 = conv([-1 10], [1 2]) - [0 32 0]
rc1 = roots(c1)
K = rc1(2) %wzmocnienie krytyczne
ps = [(-K+10) 0 (8*K)]
rps = roots(ps)
w = imag(rps(1))
Tosc = 2*pi/w 


Kp = 0.6 * K
Td = Tosc/8
Kd = Kp*Td