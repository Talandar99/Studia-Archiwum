
tx = 0.1;
fp=1000;
fx1=100;
fx2=105;
t=(0:1/fp:0.1-1/fp);
x1=3*sin(2*pi*fx1*t);
x2=3*sin(2*pi*fx2*t);
X1=fft(x1);
amp1=abs(X1);
f01=1/tx;
f=f01*(0:length(t)-1);
x3=[ones(1,8) zeros(1,49) ones(1,7)];
X3=fft(x3);
x4=[ones(1,5) zeros(1,51) ones(1,9)];
X4=fft(x4);

x5 = [ones(1,3) zeros(1,47)];
X5 = fft(x5);
x6 = [zeros(1,5) ones(1,3) zeros(1,42)];
stem(-25:24, fftshift(abs(fft(x6))));
%stem(-32:31, [X4(33:64) X4(1:32)]);
%stem(-32:31, [X3(33:64) X3(1:32)]);
%stem(t,x1);
%stem(t,x2);
%stem(f,abs(fft(x2)));
%stem(t, x2.*window_1');
%stem(f,abs(fft(x2.*window_1')));
%plot(f,abs(fft(x2)),f,abs(fft(x2.*window_1')))
