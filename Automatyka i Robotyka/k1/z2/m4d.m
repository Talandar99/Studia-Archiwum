clc;
clear;

%m4.d)

num = [1 3 3]
den = [1 4 3 0]
printsys(num,den, 's')


[r, p, k] = residue(num, den)


t=[0:0.01:10]';
ya = 0.5*exp(-3*t) -0.5*exp(-1*t) +1
yb= r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t)+ r(3)*exp(p(3)*t)

id= figure
plot(t, ya,"LineWidth",1)
hold on
plot(t, yb, "k-","LineWidth",2)
hold off
xlabel("t [s")
ylabel("y(t)")

axis([0 10 0 1.1])
grid on

