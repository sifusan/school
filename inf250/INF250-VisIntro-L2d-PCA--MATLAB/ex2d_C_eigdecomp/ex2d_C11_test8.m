%
%
% doing the component-wise division of w_V by the eigenvalues we get: 
%
s = w_V./diag(L)
%
% we should get back to v in V-coordinates!
%
% in other words:  
% -- given a vector v in V-coordinates
% -- the transformed vector v (left-multiplication with A in std. coords.)
% -- becomes w (in V-coordinates) 
% -- by the component-wise multiplication of v (in V-coords.) 
% -- with the eigenvalues of A
%
%
