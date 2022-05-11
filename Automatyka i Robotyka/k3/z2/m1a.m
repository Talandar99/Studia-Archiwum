num = [4 4]
den = [1 8 21 18]
t = [0:0.001:10]';
printsys(num,den, 's')
[r,p,k] = residue(num,den)
roots(den)
y =  4*exp(-3*t) + 8*t.*exp(-3*t) -4*exp(-2*t)
figure
plot(t, y,"LineWidth",2)
grid on 
xlabel("x(t)")
ylabel("y(t)")
axis([0 10 0 10])

num = [10]
den = [1 2 5 0]
printsys(num,den, 's')
[r,p,k] = residue(num,den)
roots(den)
M= abs(r(1)) %r(1) = -1 +0.5j = M*e^j^fi = 1.1180 = 1.1180e^j*153.4349stopnia
phi = angle(r(1))*180/pi
A = 2*M 
y= 2.2361*exp(-t).*cos(2*t+153.4349)+2
plot(t, y,"LineWidth",2)