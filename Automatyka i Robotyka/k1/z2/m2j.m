clc;
clear;

%przyklad bez potegi za nawiasem w mianowniku

num = 2 * [1 1]
den = [1 1 2 0]

printsys(num,den, 's')

[r, p, k] = residue(num, den)
M = abs(r(1))
phi = angle(r(1))*180/pi
A= 2*M

t=[0:0.01:100]';
ya = 1.5119*exp(-0.5*t).*cos(1.3229*t -131.4096*pi/180)+1

sigma=real(p(1))
w = imag(p(1))
yb= A*exp(sigma*t).*cos(w*t+phi*pi/180)+r(3)

id= figure
plot(t, ya,"LineWidth",1)
hold on
plot(t, yb, "k-","LineWidth",2)
hold off
xlabel("t [s]")
ylabel("y(t)")

%axis([0 10 0 1.1])
grid on