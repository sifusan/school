% Relationship between open loop and closed loop frequency responses and
% time response

% second order system: G(s) = p1 * k / ( s ( s + p1 ) )

clear all

k = input('Enter a value for the gain:  ')

p1 = 10;

num = [ p1 * k  ];

den = poly([ 0 -p1 ]);

G = tf(num,den) % create the open loop transfer function G

H = tf([1],[1]); % Unity gain feedback

M = feedback(G,H)  % Creates the closed loop transfer function M = G / ( 1 + G * H )

f_table = logspace(0,2,200); % frequency table with 200 entries from 1 to 100

bode(G,f_table) % plot G, the open loop freqency response

margin(G) % display stability margins

[gm,pm,w180,wc] = margin(G) % put the margins into variables and print their values

grid on

hold on

bode(M,f_table) % plot the closed loop frequency response

[amplitude,phase,wout] = bode(M,f_table);

M_max = 20 * log10(max(amplitude)) % display the maximum value, in dB, of the closed loop freqency response

dummy = input('press any key to continue:  ');

hold off

step(M)  % plot the step response

[y,t_table] = step(M);

grid on

y_max = max(y) % display the peak value of the step response






