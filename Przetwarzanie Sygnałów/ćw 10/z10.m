
tx = 0.01;
fp = 250000;
fm = 1000;
m = 0.5;
fn = 20000;
t = (0:1/fp:tx-1/fp);
AM = (1+m*sin(2*pi*fm*t)).*sin(2*pi*fn*t);
plot(t,AM);

f = 1/tx*(0:length(t)-1);
stem(f, abs(fft(AM)));

x = f(150:250);
y = abs(fft(AM))/(tx*fp/2);
y = y(150:250);
stem(x,y)

AM_abs=abs(AM);
%plot(t,AM_abs)


AM_x_nosna=AM.*sin(2*pi*fn*t)
%plot(t, cos.data, t, sig3.data)

DSB=sin(2*pi*fm*t).*sin(2*pi*fn*t);
DSB_abs=abs(DSB);
DSB_nosna = DSB.*sin(2*pi*fn*t)


plot(t,cos.data, t, sig3.data, t, sig10.data)

plot(t, sig10.data, t, dsbnos2.data)