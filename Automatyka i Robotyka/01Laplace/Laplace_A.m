clear;

%a)
num = [1 4 2];
den = [1 5 4 0];
[r,p,k] = residue(num,den);

M1=abs(r(1));
fi1=angle(r(1))*180/pi;

M2=abs(r(2));
fi2=angle(r(2))*180/pi;

M3=abs(r(3));
fi3=angle(r(3))*180/pi;

t =[0:0.1:10];
y = 0.1667*exp(-4*t)+0.3333333333*exp(-1*t)+0.5;

plot(t,y);