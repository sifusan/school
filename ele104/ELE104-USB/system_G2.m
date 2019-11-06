num = 9 * 10 * 30 * [1 10];

den = conv(conv([1 1], [1 3]), [1 30]);

G2 = tf(num,den,'InputDelay',0.02)

f_table = logspace(-1,2,200);

bode(G2,f_table)

grid on


