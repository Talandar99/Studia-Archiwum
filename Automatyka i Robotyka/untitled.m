clc;
clear;

k=roots([-1 -24 20])

Kkr=0.8062;
%ps=[(-Kkr+10)/4 0 2*Kkr]

Rps=roots([(-Kkr+10)/4 0 2*Kkr])

W=imag(Rps(1))

Tosc =(2*pi)/W