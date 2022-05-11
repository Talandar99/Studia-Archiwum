fx1 = 100;
fp = 1000;
tx = 0.1;
t = (0:1/fp:1-1/fp);
x1=3*sin(2*pi*fx1*t);
fx2=105;
x2=3*sin(2*pi*fx2*t);
x1_1k=3*sin(2*pi*fx1*t);
%stem(t,x2);
%fvtool(x2);
%wintool;

stem(t, x1.*window_1');
%fvtool(x1.*window_1');
%fvtool(x2.*window_1');

%stem(t, x1.*window_1');
%fvtool(x1.*window_1');
%fvtool(x2.*window_1');

%fvtool(x1_1k);

%fvtool(x1_1k.*window_1');

%stem(t,x1);
%fvtool(x1);