%
%
%
% selected image commandos:  7.) noisy G
%
close all; 
%
% add grayscale-noise to grayscale image (scaled)... 
noiseF = 50
Gn = G+noiseF*Ngray;
%
% plot... (non-noisy and noisy grayscale image, both histograms)
subplot(2,2,1), imshow(uint8(G)); 
subplot(2,2,2), histogram(G,[0:8:256]), axis([0 256 0 100000]); 
subplot(2,2,3), imshow(uint8(Gn)); 
subplot(2,2,4), histogram(Gn,[0:8:256]), axis([0 256 0 100000]); 
%
