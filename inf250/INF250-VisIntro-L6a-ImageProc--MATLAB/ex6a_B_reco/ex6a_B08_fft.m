%
%
%
% selected image commandos:  8.) spectrum of G
%
close all; 
%
% convert both grayscale images (non-noisy and noisy) 
% into frequency-dommain...
S = fftshift(fft2(G)); 
Sn = fftshift(fft2(Gn)); 
%
% plot... (both non-noisy and noisy; both time- and frequency-domain)
subplot(2,2,1), imshow(uint8(G)), shading interp, colormap(gray); 
subplot(2,2,2), pcolor(log(abs(S))), shading interp, colormap(gray); 
subplot(2,2,3), imshow(uint8(Gn)), shading interp, colormap(gray); 
subplot(2,2,4), pcolor(log(abs(Sn))), shading interp, colormap(gray); 
%
