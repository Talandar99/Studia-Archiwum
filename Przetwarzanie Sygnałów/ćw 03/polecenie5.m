clc;
clear;

 t = (0:0.01:0.99);

% y1=A*sin(2*pi*fs*t);
% Y1 = fft(y1);
% stem(f,abs(Y1));
y123=10*sin(2*pi*20*t)+5*sin(2*pi*70*t)+2*sin(2*pi*90*t);
f=0:1:99;
stem(f,abs(fft(y123)));
