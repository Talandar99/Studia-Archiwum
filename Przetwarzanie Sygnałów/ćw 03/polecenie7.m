clc;
clear;

yokres1=[-1*ones(1,14) 2 5*ones(1,14) 2];
yp1=yokres1;
for k=1:7
    yp1=[yp1 yokres1];
end;
t=0:1/240:1-1/240;
stem(t,yp1)