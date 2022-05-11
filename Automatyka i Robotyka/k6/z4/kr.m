clear

nunGs= [1 3 8]
denGs= [1 4 7 9 4]
Gs= tf(nunGs, denGs)

%sisotool(Gs)
b1=4*[1 7] - [3 9]
c1= conv([1 19],[3 9]) - [0 16*[8 4]]

rcl = roots(c1)
%Wzmocnienie krytyczne
K=rcl(2)

%posukiwanie biegunów na osi liczb urojonych 
ps=[(K+19) 0 (8*K+4)*4]
rps = roots(ps)
w = imag(rps(1))

%okres oscylacji
Tosc = 2*pi/w

%nastawy regulatora pid - wyznaczone metodą zigglera nicholsa

Kp=0.6*K
Ti= Tosc/2
Td= Tosc/8

Ki= Kp/Ti
Kd= Kp*Td

