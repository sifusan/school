%
%
%
% selected image commandos:  5.) noise image (grayscale) 
%
close all; 
%
Ngray = randn(600, 800); %% scalar noise image (grayscale)...
%
% plot... (grayscale noise image and histogram)
subplot(1,2,1), imshow(Ngray);
subplot(1,2,2), histogram(Ngray); 
%
