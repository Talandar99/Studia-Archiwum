clc;
clear;

 t = (0:0.01:0.99);
 fs=95;
 A=10;
 y2=A*sin(2*pi*fs*t);
 stem(t,y2);