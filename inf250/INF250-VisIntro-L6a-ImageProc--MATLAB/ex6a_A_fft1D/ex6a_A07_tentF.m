%
%
% 1D FFT:  7.) tent-filter
%
close all; 
%
% use the tent-filter on both the original line and the median-filtered
Ltent = conv(smTent,L); 
LmedTent = conv(smTent,Lmed); 
%
% plot ... 
subplot(1,4,1), plot(L), axis([1 800 0 maxY]); 
subplot(1,4,2), plot(Ltent(1:800)), axis([1 800 0 maxY]); 
subplot(1,4,3), plot(Lmed), axis([1 800 0 maxY]); 
subplot(1,4,4), plot(LmedTent(1:800)), axis([1 800 0 maxY]); 
%
