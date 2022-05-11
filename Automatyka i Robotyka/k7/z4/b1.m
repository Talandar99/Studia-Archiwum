clc;
clear;
Gs = tf([1 2], [1 4 3 2 0])

%kryterium routha
b2=[0 3*4] - [1 2]
c1=conv([-1 10], [1 2]) - [0 32 0]