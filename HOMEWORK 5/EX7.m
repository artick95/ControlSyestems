
s=tf('s')

Gp=100/(s^3+5.5*s^2+4.5*s);

zpk(Gp)


Kp=100/4.5
v=1

Gf=1/(8*0.5)
Gs=0.5
Gr=1
Ga=0.112
Tp0=1.095
Sp0=1.41
zeta=0.545
w_des=(1.9+1.07)/2

% KC>0.0501
Kc=10*10^(-43.3/20)

z=w_des/100
Rz=1+s/z

zd=(w_des)/(8e-1)
Rd=(1+s/zd)/(1+s/(zd*16))



L=Kc/s*Gp*Ga*Gs*Gf*Rz*Rd
Gc=Kc/s*Rz*Rd
Kd=8


zpk(L)
% nyquist(L)

omega=logspace(-2,6,6000);

NicholsEren(L, omega, Sp0, Tp0);

T=L/(L+1)







