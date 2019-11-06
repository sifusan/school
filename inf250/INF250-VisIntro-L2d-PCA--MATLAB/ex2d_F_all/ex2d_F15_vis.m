%
%
% We can look at some projections: 
%
clf
%
subplot(3,3,1), plot(Du(:,2), Du(:,1), 'k+'), grid on
subplot(3,3,2), plot(Du(:,3), Du(:,1), 'k+'), grid on
subplot(3,3,3), plot(Du(:,4), Du(:,1), 'k+'), grid on
subplot(3,3,5), plot(Du(:,3), Du(:,2), 'k+'), grid on
subplot(3,3,6), plot(Du(:,4), Du(:,2), 'k+'), grid on
subplot(3,3,9), plot(Du(:,4), Du(:,3), 'k+'), grid on
%
%
