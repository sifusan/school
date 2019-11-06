%
% visualize to show path -- u changes horizontally (left2right) ... 
% ... v vertically (bottom2top)
contour(u, v, S.', [0:0.05:8]), hold on; axis equal 
quiver(u, v, Gu.', Gv.', 2); colorbar 
plot(M(1:i,1), M(1:i,2), 'k')
plot(M(1:i,1), M(1:i,2), 'k+')
hold off 
%
