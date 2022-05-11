clear
clc
close
%uzyskana funkcja operaatorowa
num = 10*[1 1]
den = conv([1 4 0 0],[1 6])
printsys(num, den)

%wyznaczenie parametrów opisujących funkcje elementarnych
[r,p,k] = residue(num,den)

%wykreślenie rozwiązania
t = [0:0.01:10]';

y = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) + r(3) + r(4)*t;
id=figure;
plot(t,y,"LineWidth",2)
grid on