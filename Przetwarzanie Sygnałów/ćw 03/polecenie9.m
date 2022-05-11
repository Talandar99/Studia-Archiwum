yokres2=[-1*ones(1,7) 5*ones(1,7) 2];
yp2=yokres2;
for k=1:7
    yp2=[yp yokres2];
end
t=0:1/120:1-1/120;
stem(t,yp2)

f=0:1/120:1-1/120;
stem(t,yp2)