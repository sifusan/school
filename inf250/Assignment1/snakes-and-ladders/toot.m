% Sound Function
function adum = toot()
adum = 0;
% Whistle Generator Program
t = 0 : 1/2000 : 0.3;
sig = 0.7 * chirp(t,0,0.3,10000);
sound(sig,2000,8)