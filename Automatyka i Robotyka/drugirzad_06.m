clc;
clear;

zeta=(-log(0.14)/sqrt(pi^2+log(0.14)^2))

Wn=4/sqrt(1-(2*(zeta^2))+sqrt(4*(zeta^4)+2))

K=Wn^2