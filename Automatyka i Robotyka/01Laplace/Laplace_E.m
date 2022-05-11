clear;
%e)

num=[-1 0 0 1];
den=[1 2 0 0 0];
[r,p,k]=residue(num,den);

M1=abs(r(1));
M2=abs(r(2));
M3=abs(r(3));
M4=abs(r(4));

fi1=angle(r(1))*180/pi;
fi2=angle(r(2))*180/pi;
fi3=angle(r(3))*180/pi;
fi4=angle(r(4))*180/pi;

t=[0:0.1:10];
y=1.125*exp(-2.*t)+0.125-0.25*t+0.25.*t.^2;
plot(t,y);