clear
clc
close
%#ok<*NOPTS> 

num = [1 1] 
den = conv([1 2 0], [1 2 2])
printsys(num, den)

[r, p, k] = residue(num, den)

t = [0:0.01:10]';
y = r(1)*exp(p(1)*t) + 0.5*exp(-t).*cos(pi + t) + r(4);

id = figure;
plot(t, y, "LineWidth", 2)
grid on