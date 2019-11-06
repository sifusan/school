%
% visualize to check -- u changes horizontally (left2right) ... 
% ... v vertically (bottom2top)
contour(u, v, S.', [0:0.1:8]), hold on; axis equal; % axis 'off'; ax = gca; ax.Box = 'off'; 
quiver(u, v, Gu.', Gv.', 2); colorbar, hold off 
%
