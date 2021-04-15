
s=tf('s')

Gp=10^6/(s^2+500*s);

zpk(Gp)


Kp=10^6/500
v=1

Gf=0.5
Gs=1
Gr=1
Ga=3
Tp0=1.02
Sp0=1.33
zeta=0.621
w_des=775


Kc=2.2
% 
% 
z=w_des/100
Rz=1+s/z
zd=w_des/(1.4)
Rd=(1+s/zd)/(1+s/(zd*4)) 
mi=16
p_i=w_des/10^2
Ri=(1+s/(mi*p_i))/(1+s/(p_i))
% 
% 
% Rd_3=(1+s/0.107)/(1+s/(0.107*3))
% 
% mi_2=10^(8.99/20)
% p_i_2=w_des/10^2
% Ri_2=(1+s/(mi_2*p_i_2))/(1+s/(p_i_2))
L=Kc/s*Gp*Ga*Gs*Gf
Gc=Kc/s*Rz*Ri*Rd
Kd=2
% Kd=3
zpk(L)
% nyquist(L)

omega=logspace(-2,6,6000)

NicholsEren(L, omega, Sp0, Tp0);








