%
%
% We can look at some projections: 
%
clf
%
subplot(3,3,1), plot(Dz(:,2),      Dz(:,1),      'k+'), hold on, grid on, 
                plot(DzReco2(:,2), DzReco2(:,1), 'bx'), hold off
subplot(3,3,2), plot(Dz(:,3),      Dz(:,1),      'k+'), hold on, grid on, 
                plot(DzReco2(:,3), DzReco2(:,1), 'bx'), hold off
subplot(3,3,3), plot(Dz(:,4),      Dz(:,1),      'k+'), hold on, grid on, 
                plot(DzReco2(:,4), DzReco2(:,1), 'bx'), hold off
subplot(3,3,5), plot(Dz(:,3),      Dz(:,2),      'k+'), hold on, grid on, 
                plot(DzReco2(:,3), DzReco2(:,2), 'bx'), hold off
subplot(3,3,6), plot(Dz(:,4),      Dz(:,2),      'k+'), hold on, grid on, 
                plot(DzReco2(:,4), DzReco2(:,2), 'bx'), hold off
subplot(3,3,9), plot(Dz(:,4),      Dz(:,3),      'k+'), hold on, grid on, 
                plot(DzReco2(:,4), DzReco2(:,3), 'bx'), hold off
%
%
