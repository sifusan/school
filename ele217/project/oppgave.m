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

[h, w] = freqz(b, a, 1200)

% axis([0 100 -1 1])
% figure(2)
% plot(w/pi, 20*log10(abs(h)));
% figure(3)
% plot(atan(w), 20*log10(abs(h)));
t = tf(w/pi, (h));
% bode(t);


figure(4)
hold on

y2 = filter(b, a, y_noise);
plot(x, y2,  'Color', '#4DBEEE');
plot(x, y, 'Color', '#D95FFF');


%%
%2

clear all
close all

EbN0 = -4:1:10;
Ebn0_lin = 10.^(EbN0./20)
