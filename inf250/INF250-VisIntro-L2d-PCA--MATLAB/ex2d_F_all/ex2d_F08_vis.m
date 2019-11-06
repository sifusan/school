%
%
% We can look at the scores: 
%
clf
%
subplot(3,3,1), plot(DzScores(:,2), DzScores(:,1), 'k+'), grid on
subplot(3,3,2), plot(DzScores(:,3), DzScores(:,1), 'k+'), grid on
subplot(3,3,3), plot(DzScores(:,4), DzScores(:,1), 'k+'), grid on
subplot(3,3,5), plot(DzScores(:,3), DzScores(:,2), 'k+'), grid on
subplot(3,3,6), plot(DzScores(:,4), DzScores(:,2), 'k+'), grid on
subplot(3,3,9), plot(DzScores(:,4), DzScores(:,3), 'k+'), grid on
%
%
