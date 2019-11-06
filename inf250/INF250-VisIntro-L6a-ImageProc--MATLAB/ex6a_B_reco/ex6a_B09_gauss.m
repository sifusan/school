%
%
% selected image commandos:  9.) a large Gaussian
%
close all; 
%
% create three Gaussian filters...
[Gx, Gy] = meshgrid(1:800, 1:600); 
f1 = 1/50000 %% wide...
f2 = 1/5000  %% medium-wide...
f3 = 1/500   %% narrow...
Gau1 = exp(-f1*(Gx-401).^2-f1*(Gy-301).^2); 
Gau2 = exp(-f2*(Gx-401).^2-f2*(Gy-301).^2); 
Gau3 = exp(-f3*(Gx-401).^2-f3*(Gy-301).^2); 
%
% plot...
subplot(1, 3, 1), pcolor(Gau1), shading interp, colormap(gray); 
subplot(1, 3, 2), pcolor(Gau2), shading interp, colormap(gray); 
subplot(1, 3, 3), pcolor(Gau3), shading interp, colormap(gray); 
%
