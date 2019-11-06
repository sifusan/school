%
%
% Now let's check for corelation in this dataset: 
%
S2 = cov(D.')
%
% Note that we call cov(.) with the transpose of D
% (this is a consequence of assuming data rows)
%
%
% There seems to be quite some corelation between Height and Shoesize -- 
% the covariance is larger than the variance within Shoesize!
%
%
