%
%
% Edge detection:  2.) Sobel
%
close all; 
%
iGsobel = edge(iG, 'Sobel');  %% filter with Sobel-filter...
%
% plot...
subplot(1,2,1), imshow(iG); 
subplot(1,2,2), imshow(iGsobel); 
%
