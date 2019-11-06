%
%
% Edge detection:  6.) LoG
%
close all; 
%
% now: Laplacian of Gaussian...
iGlog = edge(iG, 'log');  
iGbl2log = edge(iGblur2, 'log'); 
iGbl4log = edge(iGblur4, 'log'); 
subplot(2,3,1), imshow(iG);       %% original (grayscale) 
subplot(2,3,2), imshow(iGblur2);  %% smoothed original
subplot(2,3,3), imshow(iGblur4);  %% smoothed original (more)
subplot(2,3,4), imshow(iGlog);    %% LoG (original)
subplot(2,3,5), imshow(iGbl2log); %% LoG (smoothed)
subplot(2,3,6), imshow(iGbl4log); %% LoG (smoothed more)
%
