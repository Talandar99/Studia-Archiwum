clear
clc

%Gs = tf([1 -3 2], [1 3 6 10 1])
%sisotool(Gs)

numGs = [1 -3 2];
denGs = [1 3 6 10 1];
Gs = tf(numGs,denGs)

b1 = 3 *[1 6] - [-3 10]
c1 = conv([6 8],[-3 10]) - [0 3*[6 3]]

rc1 = roots(c1)
K = rc1(1)
ps = [(6 * K + 8) 0 (6 * K + 3)]
rps = roots(ps)
w = imag( rps(1))
Tosc = 2*pi/w

Kp = 0.45 * K
Ti = Tosc/1.2
Ki = Kp/Ti

Kp = 0.6*K
Ti = Tosc/2
Td = Tosc/8
Ki = Kp/Ti
Kd = Kp*Td

numGpid = [Kd Kp Ki]
denGpid = [1 0]
numGo = conv(numGpid, numGs)
denGo = conv(denGpid, denGs)
Go = tf(numGo, denGo)
sisotool(Go)

%format short
%format long