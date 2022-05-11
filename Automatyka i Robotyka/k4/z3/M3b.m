clear
clc
close
%#ok<*NOPTS> 


%   obliczanie za pomocą MATLab
num = [-2 0] 
den = conv([1 1], [1 5 6])
printsys(num, den)

[r, p, k] = residue(num, den)

t = [0:0.01:10]';
y = r(1)*exp(p(1)*t) + r(2)*exp(p(2)*t) + r(3)*exp(p(3)*t);

%   obliczanie za pomocą SIMULink
name_mdl = 'M3b_mdl';
%open_system( name_mdl)
out = sim( name_mdl, 10);
tS = out.simout.time;
yS = out.simout.data;


id = figure;
plot(t, y, "y-", "LineWidth", 5)
hold on
plot(tS, yS, "k-", "LineWidth", 1)
hold off
xlabel('t [s]')
ylabel('y(t) [-]')
title('Rozwiązanie równania różniczkowego')
grid on