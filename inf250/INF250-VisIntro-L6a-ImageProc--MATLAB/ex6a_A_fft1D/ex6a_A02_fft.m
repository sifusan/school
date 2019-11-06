%
%
% 1D FFT:  2.) FFT
%
close all; 
%
S = fft(L); %% transform the line into the frequency-domain...
Ssh = fftshift(S); 
%
% plot the resulting spectrum (non-shifted and shifted)...
subplot(1,3,1), plot(L), axis([1 800 0 maxY]); 
subplot(1,3,2), plot(log(abs(S))); 
subplot(1,3,3), plot(log(abs(Ssh))); 
%
