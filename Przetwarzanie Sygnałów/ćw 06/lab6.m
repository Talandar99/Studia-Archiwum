clear;
clc;

%Polecenie 1
fs = 5;
A = 10;
t = (0:0.001:0.999);
y1 = A*sin(2*pi*fs*t);
figure
plot(t,y1); title('y1 - pojedyncza sinusoida');

%Polecenie 2
f1 = 10;
f2 = 100;
A1 = 10;
A2 = 1;
y12 = A1*sin(2*pi*f1*t)+A2*sin(2*pi*f2*t);
figure
plot(t,y12); title('y12 - suma dwóch sinusoid');

%Polecenie 3
yn = y1+randn(size(t));
figure
plot(t, yn); title('yn - sinusoida z szumem');

%Polecenie 4
imp = [1 zeros(1,19)];
okno = ones(1,20);
okres = y1(1:200);

%Polecenie 5
y1_imp = conv(y1, imp);
y1_okno = conv(y1, okno);
y1_okres = conv(y1, okres);
t1199 = (0:0.001:1.198);
t1019 = (0:0.001:1.018);
figure
plot(t1019, y1_imp); title('Splot y1 z impulsem');
figure
plot(t1019, y1_okno); title('Splot y1 z oknem prostokątnym');
figure
plot(t1199, y1_okres); title('Splot y1 z pojedynczym okresem y1');

%Polecenie 6
y12_okno = conv(y12, okno);
y12_okres = conv(y12, okres);
yn_okno = conv(yn, okno);
yn_okres = conv(yn, okres);
figure
plot(t1019, y12_okno, t1019, yn_okno); title('Splot y12 i yn z oknem prostokątnym');
figure
plot(t1199, y12_okres, t1199, yn_okres); title('Splot y12 i yn z pojedynczym ich okresem');

%Polecenie 7
x = y1;
xa = y12;
xb = yn;
h = okres;
hw = okno;
yC = ifft(fft([x zeros(1,length(h)-1)]).*fft([h zeros(1,length(x)-1)]));
yCa = ifft(fft([xa zeros(1,length(h)-1)]).*fft([h zeros(1,length(xa)-1)]));
yCb = ifft(fft([xb zeros(1,length(h)-1)]).*fft([h zeros(1,length(xb)-1)]));
yCw = ifft(fft([x zeros(1,length(hw)-1)]).*fft([hw zeros(1,length(x)-1)]));
yCaw = ifft(fft([xa zeros(1,length(hw)-1)]).*fft([hw zeros(1,length(xa)-1)]));
yCbw = ifft(fft([xb zeros(1,length(hw)-1)]).*fft([hw zeros(1,length(xb)-1)]));
figure
plot(t1019, yCw, t1019, yCaw, t1019, yCbw); title('Sploty z oknem w dziedzinie f');
figure
plot(t1199, yC, t1199, yCa, t1199, yCb); title('Sploty z okresem w dziedzinie f');

%Polecenie 8
fvtool(okres)
fvtool(okno)
