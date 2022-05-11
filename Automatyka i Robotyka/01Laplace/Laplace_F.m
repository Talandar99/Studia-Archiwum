clear;
clc;
%f)
num=[1 0 32];
den=[1 3 16 48];
[r,p,k]=residue(num,den);
M1=abs(r(1));
M2=abs(r(2));
M3=abs(r(3));

fi1=angle(r(1))*180/pi;
fi2=angle(r(2))*180/pi;
fi3=angle(r(3))*180/pi;
t=[0:0.1:10];
y=1.64*exp(-3 .*t)+ 0.8*cosd(4.*t+143.1301);
plot(t,y);