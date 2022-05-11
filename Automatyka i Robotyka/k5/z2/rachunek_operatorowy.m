clear
clc
close

%num = [2 6 8]
%den = conv([1 0 4], [1 2])

%num = 10*[1 1]
%den = conv(conv([1 3],[1 4]), conv([1 5], [1 6]))

%num = 5*[1 2]
%den = conv([1 1 0 0], [1 5])

num = [1 2 0 0 2]
den = conv([1 0 0 0], [1 0 4])

printsys(num, den, 's')

[r, p, k] = residue(num, den)
roots(den)

%M = abs( r(2))
%phi = angle( r(2))*180/pi

% zadanie M2.d)
M = abs( r(1))
phi = angle( r(1))*180/pi

A = 2 * M

t = [0:0.1:10]';


%ya = 0.5*exp(-2*t) + 2.1213*cos(2*t - 45*pi/180);
%sigma = real(p(2))
%w = imag(p(2))
%yb = r(1)*exp(p(1)*t) + A*cos

%ya = 8.3333*exp(-6*t) - 20*exp(-5*t) + 15*exp(-4*t) - 3.3333*exp(-3*t);
%yb = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) + r(3)*exp(p(3)*t) + r(4)*exp(p(4)*t);

%ya = 0.15*exp(-5*t) + 1.25*exp(-1*t) - 1.4 + 2*t;
%yb = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) + r(3)*exp(p(3)*t) + r(4)*t.*exp(p(4)*t);

%ya = 1.5052*cos(2*t - 41.6335*pi/180) - 0.125 + 0.25*t.^2;
%yb = A*cos(2*t + phi*pi/180) + r(3) + (r(5)/2)*t.^2;

figure
plot(t, ya,"LineWidth",1)
%hold on
%plot(t, yb, "k-","LineWidth",2)
%hold off
xlabel("t [s]")
ylabel("y(t)")
grid on
set( id, 'color', [1 1 1])


