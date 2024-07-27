function f = PolosSalientes(x)

global Pnpu Qnpu xd xq Vt
%Calculo del Voltaje de campo Ef y del angulo. Punto nominal.
Ef = x(1);
delta = x(2);

f(1) = Pnpu - (Ef*Vt*sin(delta)/xd) - (((1/xq) - (1/xd))*(Vt^2)*sin(2*delta)/2);
f(2) = Qnpu - (Ef*Vt*cos(delta)/xd) - (((1/xq) - (1/xd))*(Vt^2)*cos(2*delta)/2)...
    + ((Vt^2)*((1/xq) + (1/xd))/2);