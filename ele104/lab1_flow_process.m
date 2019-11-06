%% 1
start = 29;
sprang = 29 + 29 * 0.08;
delta_u = 0.232;
delta_q = 0.1638;
t63 = 9.6;
t0 = 4.6;
delta_t = 5;
k = delta_q/delta_u;

syms G1 s

G1 = k/(delta_t*s + 1)

%% 2
start = 26.5;
sprang = start * 1.08;
delta_u = (sprang - start)/10;
topp = 2.22;
bunn = 2.00;
delta_q63 = 0.126;
delta_q = topp - bunn;
T0 = 2.95;
T63 = 4.1;
T = T63 - T0;
k = delta_q/delta_u;

syms G2 s

G2 = k/(T*s + 1)

%% 3

start = 22.5;
sprang = start * 1.08;
delta_u = (sprang - start)/10;
topp = 1.73;
bunn = 1.47;
delta_q = topp - bunn;
T0 = 3.85; 
T63 = 5.75;
T = T63 - T0;
k = delta_q/delta_u;

syms G3 s

G3 = k/(T*s + 1)

