syms t c
omega = 30;

A = (1/2) * (80/((omega*c)^2 + 2 * (omega*c) + 50))
B = (1/2) * (80/((omega*-c)^2 + 2 * (omega*-c) + 50))

Ai = (1/2) * (80/((omega*i)^2 + 2 * (omega*i) + 50))
Bi = (1/2) * (80/((omega*-i)^2 + 2 * (omega*-i) + 50))

Yss = A*exp(c*omega*t) + B*exp(-c*omega*t)
Yssi = Ai*exp(1i*omega*t) + Bi*exp(-1i*omega*t)
Hi  = (80/((omega*j)^2 + 2 * (omega*j) + 50))
H = (80/((omega*c)^2 + 2 * (omega*c) + 50))
viser_x = 1 * exp(j*0);

