

%tx = 0.1;
%fp=1000;
%fcos=100;
%fsin=100;
%t=(0:1/fp:0.1-1/fp);
%h = 3*cos(2*pi*fcos*t)+sin(2*pi*fsin*t);
%h = h +ones(1,100);
%H = fft(h);


%plot(real(H));
%plot(imag(H));
%y = ifft(H);

%plot(real(y)); pause
%plot(imag(y));

%plot(-50:49, real([H(51:100) H(1:50)]));
%plot(-50:49, imag([H(51:100) H(1:50)]));


Hre = [1 ones(1,20) zeros(1,60) ones(1,40) zeros(1,60) ones(1,20)];
Him = zeros(1 ,201);
H = Hre + j*Him;
hz = ifft(H);
stem(real(hz));
stem(imag(hz));
hre = real(hz);
%fvtool(hre,1);
h=[hre(101:201) hre(1:100)];
fvtool(h,1,hre,1)

fvtool(h.*window_1',1)



