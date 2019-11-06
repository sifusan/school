%
%
% 1D FFT:  3.) tent-filter
%
close all; 
%
% construct a tent-filter... 
tentW = 100 % with a particular width... 
refX = 1:800; 
size(refX,2)
tent = max(1-abs(refX-(size(refX,2)/2))/(tentW/2),0); 
%
% plot the filter... 
plot(tent)
%
