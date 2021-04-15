 s=tf('s')

Gp=25/(s^3+3.3*s^2+2*s);

zpk(Gp)


Kp=12.5
v=0

Gf=1
Gs=1
Gr=1
Ga=0.095
Tp0=1.049
Sp0=1.361
zeta=0.59
w_des=1.03


% Kc=22*10^(6/20)
Kc=5.61

zd=(w_des)/(0.87)
Rd=(1+s/zd)/(1+s/(zd*16)) 


pi=w_des/100
mi=10^(14.2/20)
Ri=(1+s/(mi*pi))/(1+s/pi)

% zd=(w_des+0.1)/(0.81)
% Rd=(1+s/zd)/(1+s/(zd*12)) 

zd2=(w_des)/(0.5)
Rd2=(1+s/zd)/(1+s/(zd*13)) 

L=Kc/s*Gp*Ga*Gs*Gf*Rd*Rd2*Ri
Gc=Kc/s0*Rd*Rd2*Ri
Kd=1
% Kd=3
zpk(L)

% nyquist(L)

omega=logspace(-10,6,6000);

NicholsEren(L, omega, Sp0, Tp0);






