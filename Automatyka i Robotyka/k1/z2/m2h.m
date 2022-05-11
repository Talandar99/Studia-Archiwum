clc;
clear;
%przyklad bez potegi w pierwszym nawiasie

num = 1
den = conv(conv([1 1 0], [1 0.5]),[1 0.5])

printsys(num,den, 's')

[r, p, k] = residue(num, den)

t=[0:0.01:100]';
ya = -4*exp(-1*t) -4*t.*exp(-0.5*t) +4
yb= r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t)+ r(3)*t.*exp(p(3)*t) + r(4)*exp(p(4)*t)

id= figure
plot(t, ya,"LineWidth",1)
hold on
plot(t, yb, "k-","LineWidth",2)
hold off
xlabel("t [s]")
ylabel("y(t)")

%axis([0 10 0 1.1])
grid on