clear;
clc;
%h)
num=[1 6];
den=[1 6 11 6];
[r,p,k]=residue(num,den);

M1=abs(r(1));
M2=abs(r(2));
M3=abs(r(3));

fi1=angle(r(1))*180/pi;
fi2=angle(r(2))*180/pi;
fi3=angle(r(3))*180/pi;

t=[0:0.1:10];
y=1.5*exp(-3*t)-4*exp(-2*t)+2.5*exp(-t);
plot(t,y);