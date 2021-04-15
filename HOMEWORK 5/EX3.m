
s=tf('s')

Gp=100/(s^2+5.5*s+4.5);

zpk(Gp)


Kp=100/4.5
v=1

Gf=1
Gs=1
Gr=1
Ga=0.014
Tp0=1.08
Sp0=1.39
zeta=0.56
w_des=1.31


Kc=30

z=w_des/(1)
Rz=1+s/z

zd=(w_des-1.3)/(2)
Rd=(1+s/zd)/(1+s/(zd*16))

mi=10^(15.8/20)
p_i=w_des/100
Ri=(1+s/(mi*p_i))/(1+s/(p_i))
% 
% 
zd2=(w_des+1.3)/(2)
Rd2=(1+s/zd2)/(1+s/(zd2*16))


L=Kc/s*Gp*Ga*Gs*Gf*Rz*Ri
Gc=Kc/s*Rz*Ri
Kd=1

zpk(L)
% nyquist(L)

omega=logspace(-2,6,6000);

NicholsEren(L, omega, Sp0, Tp0);







