clc;
clear;
%polecenie 1

%fvtool([2 3 4], [1 3 3 1])
%h=filter([2 3 4], [1 3 3 1], [1 zeros(1,99)])
%stem(h)

%polecenie 2
%fvtool(1-0.9, [1 -0.9],1-0.8, [1 -0.8], 1-0.5, [1 -0.5]);

%polecenie 3
%alfa1=0.9;
%alfa2=0.8;
%alfa3=0.5;
%b1=0.5*(1+alfa1)*[1 -1];
%b2=0.5*(1+alfa2)*[1 -1];
%b3=0.5*(1+alfa3)*[1 -1];
%a1 = [1 -alfa1];
%a2 = [1 -alfa2];
%a3 = [1 -alfa3];
%omega1=acos(2*alfa1/(1+alfa1^2))*(1000/(2*pi))
%omega2=acos(2*alfa2/(1+alfa2^2))*(1000/(2*pi))
%omega3=acos(2*alfa3/(1+alfa3^2))*(1000/(2*pi))
%fvtool(b1,a1,b2,a2,b3,a3)

%polecenie 4
%a
alfa = 0.9;
beta1 = 0.3;
beta2 = 0.5;
beta3 = 0.8;
a1=0.5*(1-alfa)*[1 0 -1];
a2=0.5*(1-alfa)*[1 0 -1];
a3=0.5*(1-alfa)*[1 0 -1];
b1=[1 -beta1*(1+alfa) alfa];
b2=[1 -beta2*(1+alfa) alfa];
b3=[1 -beta3*(1+alfa) alfa];
fvtool(a1,b1,a2,b2,a3,b3);
%b
beta = 0.3;
alfa1 = 0.9;
alfa2 = 0.8;
alfa3 = 0.5;
a11=0.5*(1-alfa1)*[1 0 -1];
a22=0.5*(1-alfa2)*[1 0 -1];
a33=0.5*(1-alfa3)*[1 0 -1];
b11=[1 -beta*(1+alfa1) alfa1];
b22=[1 -beta*(1+alfa2) alfa2];
b33=[1 -beta*(1+alfa3) alfa3];
fvtool(a11,b11,a22,b22,a33,b33);

fo=acos(beta)*(1000/(2*pi))
sigma=acos(2*alfa1/(1+alfa1^2))*(1000/(2*pi))









