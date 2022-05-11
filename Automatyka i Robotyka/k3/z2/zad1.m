clc
clear

name_md1 = "zad_m3a_mdl";
open_system("chybam3a.slx");
sim("chybam3a.slx",tmax);
tmax = 10
%wyznaczone wspolczynniki funkcji operatorowej
%wspolczynnik licznika
num = [1 4 2]
%wspolczynnik mianownika
den = [1 5 4 0]
printsys(num,den, 's')

%wyznaczenie parametrow rozkladu funkcji operatorowej
[r,p,k] = residue(num,den)
roots(den)

%tworzenie wykresu uzyskanej funkcji czasowej
t = [0:0.1:10]';
r1 = 0.1667
r2 = 0.3333
r3 = 0.5
ya = 0.1667*exp(-4*t) + 0.3333*exp(-1*t) + 0.5
yb = r1*exp(p(1)*t) + r2*exp(p(2)*t) + r3
figure
plot(t, ya,"LineWidth",2)
hold on 
plot(t, yb,"LineWidth",1)
hold off
grid on 
xlabel("x(t)")
ylabel("y(t)")
axis([0 10 0 1])

num = [1 0]
den = [1 2]
printsys(num,den, 's')
[r,p,k] = residue(num,den)
roots(den)
y = -2*exp(-2*t)
plot(t, y,"LineWidth",3)
axis([0 4 -3 1])
