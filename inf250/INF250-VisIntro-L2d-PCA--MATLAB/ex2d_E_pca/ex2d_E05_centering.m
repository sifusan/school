%
%
% Next, we center the data: 
%
mu = mean(D,2)
Dc = D - repmat(mu, 1, n) 
%
%
clf
%
plot (Dc(1,:), Dc(2,:), 'k+'), grid on 
%
%
