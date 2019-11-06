%
%
% Edge detection:  4.) Sobel, again
%
close all; 
%
% use Sobel-filter on smoothed images...
iGbl2sobel = edge(iGblur2, 'Sobel'); 
iGbl4sobel = edge(iGblur4, 'Sobel'); 
%
% plot... (original in grayscale, sobel(original), and sobel(smoothed))
subplot(2,2,1), imshow(iG); 
subplot(2,2,2), imshow(iGsobel); 
subplot(2,2,3), imshow(iGbl2sobel); 
subplot(2,2,4), imshow(iGbl4sobel); 
%
