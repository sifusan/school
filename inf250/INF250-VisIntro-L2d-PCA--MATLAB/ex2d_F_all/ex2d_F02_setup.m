%
%
% Next, we set up the data -- this time: 
% data columns, again
% -- col. 1: age
% -- col. 2: height 
% -- col. 3: weight
% -- col. 4: shoesize
% (128 rows in total)
%
D = [Age, Height, Weight, Shoesize]
[n, d] = size(D)
mu = mean(D)
sigma = std(D)
%
%
