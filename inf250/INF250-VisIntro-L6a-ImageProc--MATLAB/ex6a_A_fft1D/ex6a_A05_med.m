%
%
% 1D FFT:  5.) median-filter
%
close all; 
%
% now filter with a median-filter...
medW = 20
Lmed = medfilt1(L,medW); 
%
% and plot...
subplot(1,2,1), plot(L), axis([1 800 0 maxY]); 
subplot(1,2,2), plot(Lmed), axis([1 800 0 maxY]); 
%
