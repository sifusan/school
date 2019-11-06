%
%
% 1D FFT:  4.) filter
%
close all; 
%
% using the tent-filter, the image-line is filtered 
% (by multiplication in the frequency-domain!)
SshF = Ssh.*tent; 
RF = ifft(ifftshift(SshF)); %% and back to time-domain...
%
% plot the filtered image line within
% 1., the original line
% 2., the spectrum of the original line
% 3., the spectrum of the filtered line 
% 4., the filtered line
SshF(1) = 1/100; 
SshF(size(SshF,2)) = 1/100; 
subplot(1,4,1), plot(refX,L), axis([1 800 0 maxY]); 
subplot(1,4,2), plot(log(abs(Ssh))); 
subplot(1,4,3), plot(log(abs(SshF))); 
subplot(1,4,4), plot(refX,RF), axis([1 800 0 maxY]); 
%
