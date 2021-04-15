 s=tf('s')

Gp=-30/(s^3+3*s^2+2*s);

zpk(Gp)


Kp=-15
v=0

Gf=1
Gs=1
Gr=1
Ga=0.006
Tp0=1.12
Sp0=1.45
zeta=0.519
w_des=1.27


% Kc=22*10^(6/20)
Kc=-63

z=w_des/1
Rz=1+s/z
% zd=(w_des)/(0.87)
% Rd=(1+s/zd)/(1+s/(zd*16)) 
% 
% 
pi=w_des/100
mi=10^(13/20)
Ri=(1+s/(mi*pi))/(1+s/pi)
% 
zd=(w_des)/(1)
Rd=(1+s/zd)/(1+s/(zd*14)) 
% 
% zd2=(w_des)/(0.5)
% Rd2=(1+s/zd)/(1+s/(zd*13)) 

L=Kc*Gp*Ga*Gs*Gf*Rd*Rd*Ri
Gc=Kc*Rd*Rd*Ri
Kd=1

zpk(L)

% nyquist(L)

omega=logspace(-10,6,6000);

NicholsEren(L, omega, Sp0, Tp0);






