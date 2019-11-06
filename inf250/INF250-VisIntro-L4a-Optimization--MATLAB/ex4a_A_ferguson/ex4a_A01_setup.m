%
% Setup for ''finding the minimum of a Ferguson patch'':
% -- a bivariate Ferguson patch (a special variant of the bicubic 
%    Hermite patch) is defined as 
%         s(u,v) = U * M_H * G * M_H.' * V.' 
%    with M_H being the Hermite matrix, 
%    U and V hosting the decreasing powers of u and v (row vectors), 
%    and G being the geometric input as follows: 
%  [ s00  s01  tv00 tv01 ; // suv:  patch-value at corner u,v
%    s10  s11  tv10 tv11 ; // tvuv: v-derivative at u,v
%    tu00 tu01 0    0    ; // tuuv: u-derivative at u,v
%    tu10 tu11 0    0    ] // no twist (2nd-order derivatives)
%           // these twist-zeros make it a Ferguson patch...  
%
% M_H ... Hermite matrix
M_H = [ 2 -2  1  1; ...
       -3  3 -2 -1; ...
        0  0  1  0; ...
        1  0  0  0]; % see lecture on splines
% 
% G ... Geometry matrix (adapt according to own design ideas)
G = [  2  4  -4  2; ... % geom. value-input for u=0
       1  3  -2  6; ... % geom. value-input for u=1
     -10 -4   0  0; ... % geom. deriv.-input (d/du) for u=0
      -4  8   0  0];    % geom. deriv.-input (d/du) for v=1
%
