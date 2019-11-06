%
%
% 1D FFT:  8.) discrete differences
%
close all; 
%
% two discrete differences filter: 
cDiff2 = [-1 0 1];      cDiff2 = cDiff2/sum(abs(cDiff2)); 
cDiff4 = [1 -8 0 8 -1]; cDiff4 = cDiff4/sum(abs(cDiff4));
%
% convolve both the original line and the median-filtered
% with both filters...  
LcD2 = conv(L, -cDiff2); 
LmedcD2 = conv(Lmed, -cDiff2); 
LcD4 = conv(L, -cDiff4); 
LmedcD4 = conv(Lmed, -cDiff4); 
%
% plot...
maxD = max([abs(max(LcD2)) abs(min(LcD2)) ...
            abs(max(LmedcD2)) abs(min(LmedcD2)) ...
            abs(max(LcD4)) abs(min(LcD4)) ...
            abs(max(LmedcD4)) abs(min(LmedcD4))])
subplot(2,4,1), plot(L), axis([1 800 0 maxY]); 
subplot(2,4,2), plot(LcD2), axis([1 800 -maxD maxD]); 
subplot(2,4,3), plot(Lmed), axis([1 800 0 maxY]); 
subplot(2,4,4), plot(LmedcD2), axis([1 800 -maxD maxD]); 
subplot(2,4,5), imshow(uint8(G(lineNo-delta:lineNo+delta, :))); 
subplot(2,4,6), plot(LcD4), axis([1 800 -maxD maxD]); 
subplot(2,4,7), plot(Lmed), axis([1 800 0 maxY]); 
subplot(2,4,8), plot(LmedcD4), axis([1 800 -maxD maxD]); 
%
