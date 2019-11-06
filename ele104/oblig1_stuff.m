%%1 a
syms s

f = (s+3)/(s+1)*(s+2);

h = tf([0 1 3], [1 3 2]);

pzmap(h, 'r')
grid on

step(h)

%% 1b
syms s x

F = s^2*x + 2*s*x + 5*x == 10/s;
laplace(F)

%% 1c
syms y x s
Y = s^3 * y + 3*s^2 * y + 5 * s * y + 1;
X = s^3*y + 4*x^2 + 6*x*s + 8;

yy = [1 3 5 1];
xx = [1 4 6 8];

[q, r] = deconv(yy, xx)

Y/X
%% 2b
syms X1 X2 k1 k2 D r1 r2 s m1 m2 F

eq1 = X1 == (X2* (k2 - s*D))/(s^2*m1 +s*D + s*r1 + k1 +k2);
eq2 = F == X2*(s^2*m2 + k2 +s*D + s*r2)+X1*(-k2 -s*D);

a = solve([eq1, eq2], [X1, F]);
%%
syms x1 x2 s F Fs
d1 = 3;
k1 = 4;
m1 = 1;
k2 = 5;
d2 = 3;
m2 = 2; 
d3 = 2;

eq1 = x1 * (m1*s^2 + s*(d1 + d2) + k1 + k2) - x2*(2*d2 + k2) == 0;

k = solve(eq1, x2);

eq2 = -x1 * (s*d2 + k2) + k * (s^2 * m2 + s*d2 + k2 + s*d3) == Fs;


X = solve(eq2, x1);
F = solve(eq2, Fs);

pretty(X/F)


%H = eq1/eq2;

%x = solve(H, x1);

%F = solve(H, Fs);

%x/F

%% 1c

syms s

y = s^3 + 3*s^2 + 5*s + 1/s^2;

x = s^3 + 4 * s^2 + 6 * s + 8/s^2;

a = y/x;

%% 2 b



%%3 a
syms s
T1 = 5/((s+3)* (s+6));
T2 = 20/(s^2+6*s+144);
T3 = (s+2)/(s^2+9);
poles(T3)
pretty(ilaplace(T2))

%% 3b
syms s
T = (s^2 + 2*s + 2)/(s^4 + 6*s^3 + 4 *s^2 + 7*s + 2);
pretty(T)
p = poles(T)

%% 3 c

[z1, o1, Tp1, Os1] = tr_attrb(16, [1 3 16])

[z2, o2, Tp2, Os2] = tr_attrb(0.04, [1 0.02 0.04])

[z3, o3, Tp3, Os3] = tr_attrb(1.05*10^7, [1 1.6*10^3 1.05 * 10^7])

%% 3 d

[O1, Z1, p11, p12] = tr_construct_expression(12, 0.6, inf)

[O2, Z2, p21, p22] = tr_construct_expression(10, 5, inf)

[O3, Z3, p31, p32] = tr_construct_expression(inf, 7, 3);


%% 
syms O Z
Ts = 7;
Tp = 3;
eq1 = Tp == pi/(O*sqrt(1-(Z^2)));
eq2 = Ts == 4/(Z*O);

a = solve([eq1, eq2], [O, Z]);

a.O
a.Z





