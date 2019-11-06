%
%
% selected image commandos:  3.) converting to grayscale
%
close all; 
%
G = double(rgb2gray(iA)); 
%
% plot... (grayscale image, a histogram of all grayvalues)
subplot(1,2,1), imshow(uint8(G));
subplot(1,2,2), histogram(G); 
%
