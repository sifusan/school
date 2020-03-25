%%
% 1
clear all
close all
m = [1 0 1 1 1 1 0 0 1 0 0 1];
y = 0;

for i=1:length(m)
    y(1 + (100 * (i-1)):(100 + (100 * (i-1)))) = (ones(1, 100) * m(i));
end

y_noise = awgn(y, 12);
x = 1:length(y_noise);
figure(1)
hold on
axis([0 12 -1 2])
plot(x/100, y_noise, 'Color', '#4DBEEE');
plot(x/100, y, 'b', 'LineWidth', 2, 'Color', '#D95FFF');
hold off

[b, a] = butter(6, 0.018);
figure(2)
freqz(b, a, 1200);

% axis([0 100 -1 1])
% figure(2)
% plot(w/pi, 20*log10(abs(h)));
% figure(3)
% plot(atan(w), 20*log10(abs(h)));
% t = tf(w/pi, abs(h));
% bode(t);

figure(3)
hold on

y2 = filter(b, a, y_noise);
plot(x, y2,  'Color', '#4DBEEE');
plot(x, y, 'Color', '#D95FFF');


%%
%2
clear all
close all
Ebn0 = -4:1:10;
Ebn0_lin = db2mag(Ebn0);

sigma = sqrt(1./(2 * Ebn0_lin));
noise_vars = sigma.^2;

bit_vals= [-1 1];
L = 50000;
BER_vals = zeros(1, length(noise_vars));
BER_vals_awgn = zeros(1, length(noise_vars));
for i=1:length(noise_vars)
    r = bit_vals(randi(2, [1 L]));
    a = awgn(r, Ebn0(i));
    n = sigma(i) * randn(1, L);
%     figure(i)
%     hold on
%     axis([0 10000 -10 10])

%     plot(1:L, r, 'o');
%     plot(1:L, a, 'o', 'color', 'red');
%     plot(1:L, n, 'o', 'color', 'green')
    
    BER_vals(i) = sum((sign(r + n)) ~= r)/L
    BER_vals_awgn(i) = sum((sign(r + a)) ~= r)/L
end

BER_t = 0.5 * erfc(sqrt(Ebn0_lin));
figure(1)
% hold on
semilogy(Ebn0, BER_vals);
hold on
semilogy(Ebn0, BER_t);
% semilogy(Ebn0, BER_vals_awgn);


