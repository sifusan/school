num = 9 * 10 * 30 * [1 10];

den = conv(conv([1 1], [1 3]), [1 30]);

G1 = tf(num,den)

f_table = logspace(-1,3,200);

close all

bode(G1,f_table)

grid on
