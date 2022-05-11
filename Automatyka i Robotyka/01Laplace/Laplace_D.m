clear;
%d)

num=[1 3 3];
den=[1 4 3 0];

[r,p,k]=residue(num,den);

M1=abs(r(1));
M2=abs(r(2));
M3=abs(r(3));


fi1=angle(r(1))*180/pi;
fi2=angle(r(2))*180/pi;
fi3=angle(r(3))*180/pi;
t=[0:0.1:10];
y=1-0.5*exp(-t)+0.5*exp(-3*t);
plot(t,y);