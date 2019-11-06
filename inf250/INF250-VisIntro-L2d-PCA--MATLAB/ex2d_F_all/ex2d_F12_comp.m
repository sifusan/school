%
%
% We can look at the original measures: 
%
clf
%
subplot(3,3,1), plot(D(:,2),      D(:,1),      'k+'), hold on, grid on, 
                plot(Dreco2(:,2), Dreco2(:,1), 'bx'), hold off
subplot(3,3,2), plot(D(:,3),      D(:,1),      'k+'), hold on, grid on, 
                plot(Dreco2(:,3), Dreco2(:,1), 'bx'), hold off
subplot(3,3,3), plot(D(:,4),      D(:,1),      'k+'), hold on, grid on, 
                plot(Dreco2(:,4), Dreco2(:,1), 'bx'), hold off
subplot(3,3,5), plot(D(:,3),      D(:,2),      'k+'), hold on, grid on, 
                plot(Dreco2(:,3), Dreco2(:,2), 'bx'), hold off
subplot(3,3,6), plot(D(:,4),      D(:,2),      'k+'), hold on, grid on, 
                plot(Dreco2(:,4), Dreco2(:,2), 'bx'), hold off
subplot(3,3,9), plot(D(:,4),      D(:,3),      'k+'), hold on, grid on, 
                plot(Dreco2(:,4), Dreco2(:,3), 'bx'), hold off
%
%
