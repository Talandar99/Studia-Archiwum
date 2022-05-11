clear
clc
close
%uzyskana funkcja operaatorowa
num = [1 1]
den = conv([1 2 0],[1 2 2])
printsys(num, den)

%wyznaczenie parametrów opisujących funkcje elementarnych
[r,p,k] = residue(num,den)
M = abs(r(2))
A = 2*M
phi = angle(r(2)*180/pi)
sigma = real(p(2))
w = imag(p(2))

%wykreślenie rozwiązania
t = [0:0.01:10]';

y = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) + r(3)*exp(p(3)*t) + r(4)*exp(p(4)*t)

ya = r(1)*exp(p(1)*t) + A*exp(sigma*t).*cos(w*t + phi*pi/180) + r(4)*exp(p(4)*t);
id=figure;
plot(t,y,"LineWidth",2)
grid on

id=figure;
plot(t,y,"LineWidth",1)
hold on
plot(t,ya,"k-","LineWidth",2)
hold off
grid on