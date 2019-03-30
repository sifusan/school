% Here you'll play a boat designer, struggling against parametric vs.
% non-parametric spline interpolation.


b = load('boatPoints.mat');

% 2
figure(1)
hold on
plot(b.X, b.Y, 'x');
plot(b.X, -b.Y, 'x');

figure(2)
hold on

axis equal

xx = 0:4:max(b.X);
cs = spline(b.X, b.Y);
p_val = ppval(cs, xx);

plot(xx, p_val, 'x');
plot(xx, p_val);
plot(b.X, -b.Y, 'x');
plot(xx, -p_val);


% 3
