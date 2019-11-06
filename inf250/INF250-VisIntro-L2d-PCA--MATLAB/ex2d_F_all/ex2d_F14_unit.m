%
%
% Now let's compare the result to a normalization
% to the unit interval: 
% 
minD = min(D)
Du = D - repmat(minD, n, 1)
%
maxDu = max(Du)
Du = Du ./ repmat(maxDu, n, 1)
%
min(Du)
max(Du)
%
%
