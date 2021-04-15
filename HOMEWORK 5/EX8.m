
s=tf('s')

Gp=-30/(s^3+3*s^2+2*s);

zpk(Gp)


Kp=-15
v=1

Gf=0.01
Gs=10
Gr=1
Ga=0.06
Tp0=1.11
Sp0=1.42
zeta=0.58
w_des=0.9497


% Kc=-10*10^(-34/20)
Kc=-0.1005*10^(6.54/20)
z=w_des/100
Rz=1+s/z
zd=(w_des)/(1)
Rd=(1+s/zd)/(1+s/(zd*14))
zd2=(5.41)/(4.5)
Rd2=(1+s/zd)/(1+s/(zd*14))

mi=2
p_i=w_des/10^2
Ri=(1+s/(mi*p_i))/(1+s/(p_i))

% 
% zd2=w_des/(1)
% Rd2=(1+s/zd2)/(1+s/(zd2*4))

mi_2=10^(14.4/20)
p_i_2=w_des/10^2
Ri_2=(1+s/(mi_2*p_i_2))/(1+s/(p_i_2))
L=zpk(minreal(Kc/s*Gp*Ga*Gs*Gf*Rz*Rd*Ri))

% [num,den]=tfdata(L,'v')
% nyquist1(num,den)

Gc=Kc/s*Rz*Rd*Ri
Kd=10

zpk(L)
% nyquist(L)

omega=logspace(-8,6,6000);

NicholsEren(L, omega, Sp0, Tp0);




