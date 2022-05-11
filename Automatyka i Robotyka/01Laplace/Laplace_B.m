clear;
%b)
%CONV
Con = conv([1 5 6],[1 1]);
den=[1 6 11 6];
num=[-2 0];

[r,p,k]= residue(num,den);

M1=abs(r(1));
fi1=angle(r(1))*180/pi;

M2=abs(r(2));
fi2=angle(r(2))*180/pi;

M3=abs(r(3));
fi3=angle(r(3))*180/pi;

t=[0:0.1:10];
y=exp(-t)-4*exp(-2*t)+3*exp(-3*t);
plot(t,y);