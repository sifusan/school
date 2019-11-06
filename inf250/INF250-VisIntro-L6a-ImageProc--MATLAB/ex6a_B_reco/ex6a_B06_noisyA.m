%
%
% selected image commandos:  6.) noisy A
%
close all; 
%
% add noise to the loaded image (scaled)...
iAn = uint8(double(iA)+50*Ncol);
%
% plot...
image(iAn); 
%
