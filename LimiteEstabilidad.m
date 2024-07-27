function f = LimiteEstabilidad(x)

global xd xq Vn P Zbase
% Calculo del Ef y delta optimo en varios puntos de Potencia.
Ef1 = x(1);
deltaoptimo1 = x(2);
Xd = xd*Zbase;
Xq = xq*Zbase;

f(1) = P - (Ef1*Vn*sin(deltaoptimo1)/Xd) - (((1/Xq) - (1/Xd))*(Vn^2)*sin(2*deltaoptimo1)/2);
f(2) = (Ef1*Vn*cos(deltaoptimo1)/Xd) + (((1/Xq) - (1/Xd))*(Vn^2)*cos(2*deltaoptimo1));