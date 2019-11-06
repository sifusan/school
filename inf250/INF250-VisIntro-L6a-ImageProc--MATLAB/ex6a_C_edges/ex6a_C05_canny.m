%
%
% Edge detection:  5.) Canny
%
close all; 
%
% now: Canny edge-detection...
iGcanny = edge(iG, 'Canny'); 
iGbl2canny = edge(iGblur2, 'Canny'); 
iGbl4canny = edge(iGblur4, 'Canny'); 
%
% plot...
subplot(2,3,1), imshow(iG); %% original (grayscale) 
subplot(2,3,2), imshow(iGsobel); %% sobel(original)
subplot(2,3,3), imshow(iGcanny); %% canny edges (original)
subplot(2,3,5), imshow(iGbl2canny); %% canny edges (smoothed)
subplot(2,3,6), imshow(iGbl4canny); %% canny edges (smoothed more)
%
