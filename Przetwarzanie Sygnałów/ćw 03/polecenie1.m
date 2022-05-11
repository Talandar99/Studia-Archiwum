clc;
clear;

 t = (0:0.01:1);
 fs=5;
 A=10;
 y1=A*sin(2*pi*fs*t);
 stem(t,y1);
 