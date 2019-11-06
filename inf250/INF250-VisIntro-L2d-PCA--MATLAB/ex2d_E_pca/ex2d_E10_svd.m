%
%
% Let's compare to the SVD here: 
%
% First, we compute the SVD: 
%
[P, M, Q]=svd(Dc)
%
% Then, do a rank-1 approximation: 
%
Dreco1svd = M(1,1) * P(:,1) * Q(:,1).' 
%
%
clf
%
plot (Dc(1,:), Dc(2,:), 'k+'), hold on, grid on, 
plot (Dreco1(1,:), Dreco1(2,:), 'bx'), 
plot (Dreco1svd(1,:), Dreco1svd(2,:), 'co')
%
% Both reconstruction results overlap completely
%
norm(Dreco1-Dreco1svd)
%
%
