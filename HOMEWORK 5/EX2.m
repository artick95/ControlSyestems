 s=tf('s')

Gp=40/(s^2+3*s+4.5);

zpk(Gp)


Kp=40/4.5
v=1

Gf=1
Gs=1
Gr=1
Ga=-0.09
Tp0=1.03
Sp0=1.33
zeta=0.628
w_des=1.33


Kc=-5

z=w_des/1
Rz=1+s/z

zd=(w_des)/(0.87)
Rd=(1+s/zd)/(1+s/(zd*16)) 


pi=w_des/100
mi=10^(12.5/20)
Ri=(1+s/(mi*pi))/(1+s/pi)

zd=(w_des)/(0.74)
Rd=(1+s/zd)/(1+s/(zd*12)) 

zd2=(w_des)/(0.5)
Rd2=(1+s/zd)/(1+s/(zd*13)) 

L=Kc/s*Gp*Ga*Gs*Gf*Rz*Ri
Gc=Kc/s*Rz*Ri
Kd=1

zpk(L)

nyquist(L)

omega=logspace(-10,6,6000);

NicholsEren(L, omega, Sp0, Tp0);






