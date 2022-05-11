clc;
clear;

 t = (0:0.01:0.99);
 fs=105;
 A=10;
 y3=A*sin(2*pi*fs*t);
 stem(t,y3);