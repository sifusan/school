%
%
%
% selected image commandos:  10.) filtering 
%
close all; 
%
% filter with all three filters...
Sf1 = Sn.*Gau1;  Sf2 = Sn.*Gau2;  Sf3 = Sn.*Gau3; 
Rf1 = ifft2(ifftshift(Sf1)); Rf2 = ifft2(ifftshift(Sf2)); Rf3 = ifft2(ifftshift(Sf3)); 
T0 = log(abs(Sn)); T1 = log(abs(Sf1)); T2 = log(abs(Sf2)); T3 = log(abs(Sf3)); 
maxS = max([max(max(T0)) max(max(T1)) max(max(T2)) max(max(T3))])
U0 = T0.*(250/maxS); U1 = T1.*(250/maxS); U2 = T2.*(250/maxS); U3 = T3.*(250/maxS); 
%
% plot...
figure(1) %% non-filtered, noisy image and spectrum 
subplot(1,2,1), imshow(uint8(Gn)), shading interp, colormap(gray); 
subplot(1,2,2), imshow(uint8(U0)), shading interp, colormap(gray); 
figure(2) %% with 1st filter...
subplot(1,2,1), imshow(uint8(Rf1)), shading interp, colormap(gray); 
subplot(1,2,2), imshow(uint8(U1)), shading interp, colormap(gray); 
figure(3) %% with 2nd filter...
subplot(1,2,1), imshow(uint8(Rf2)), shading interp, colormap(gray); 
subplot(1,2,2), imshow(uint8(U2)), shading interp, colormap(gray); 
figure(4) %% with 3rd filter...
subplot(1,2,1), imshow(uint8(Rf3)), shading interp, colormap(gray); 
subplot(1,2,2), imshow(uint8(U3)), shading interp, colormap(gray); 
%
