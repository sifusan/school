%
%
% Edge detection:  3.) Gaussian smoothing
%
close all; 
%
% two Gaussian filters...
h2 = fspecial('gaussian', [21 21], 2);
h4 = fspecial('gaussian', [21 21], 4); 
m2 = max(max(h2))
m4 = max(max(h4))
iGblur2 = imfilter(iG, h2); 
iGblur4 = imfilter(iG, h4); 
%
% plot... (both filters, un-filtered and filtered images, differences)
subplot(2,3,1), imshow(h2/m2); 
subplot(2,3,2), imshow(iGblur2);
subplot(2,3,3), imshow((iG-iGblur2)*10); 
subplot(2,3,4), imshow(h4/m4); 
subplot(2,3,5), imshow(iGblur4);
subplot(2,3,6), imshow((iG-iGblur4)*10); 
%
