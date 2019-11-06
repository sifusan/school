%
%
% A lower-, i.e., k-dimensional approximation of D
% can be achieved by reconstructing D based on the 
% k largest PC, only: 
%
% Considering only the 1st PC in our example, we get: 
% Note that the biggest eigenvalue was the 2nd one!
%
Dreco1 = V(:,2) * D_V(2,:)
%
%
clf
%
plot (Dc(1,:), Dc(2,:), 'k+'), hold on, grid on
plot (Dreco1(1,:), Dreco1(2,:), 'bx')
%
%
