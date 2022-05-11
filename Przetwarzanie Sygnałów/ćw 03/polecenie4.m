clc;
clear;

 t = (0:0.01:0.99);
 fs=5;
 A=10;
 y1=A*sin(2*pi*fs*t);
 
  fs=95;
 A=10;
 y2=A*sin(2*pi*fs*t);
 
  fs=105;
 A=10;
 y3=A*sin(2*pi*fs*t);
 
 plot(t,y1);
 hold on;
 plot(t,y2);
 hold on;
 plot(t,y3);
 hold on;
 