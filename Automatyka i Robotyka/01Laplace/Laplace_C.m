clear;
%c)
num =[2 6 8];
den= [1 2 4 8];
[r,p,k]= residue(num,den);

M1=abs(r(1));
M2=abs(r(2));
M3=abs(r(3));

fi1=angle(r(1))*180/pi;
fi2=angle(r(2))*180/pi;
fi3=angle(r(3))*180/pi;

t=[0:0.1:10];
y=0.5*exp(-2*t)+2.1214*cosd(2*t-45*pi/180);
plot(t,y);