%
%
% We can look at the scores: 
%
clf
%
subplot(3,3,1), plot(DuScores(:,2), DuScores(:,1), 'k+'), grid on
subplot(3,3,2), plot(DuScores(:,3), DuScores(:,1), 'k+'), grid on
subplot(3,3,3), plot(DuScores(:,4), DuScores(:,1), 'k+'), grid on
subplot(3,3,5), plot(DuScores(:,3), DuScores(:,2), 'k+'), grid on
subplot(3,3,6), plot(DuScores(:,4), DuScores(:,2), 'k+'), grid on
subplot(3,3,9), plot(DuScores(:,4), DuScores(:,3), 'k+'), grid on
%
%
