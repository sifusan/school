%
%
% 1D FFT:  6.) tent
%
close all; 
%
% another tent-filter...
smTentX = 0:20; 
smTentW2 = (size(smTentX,2)-1)/2
smTent = 1-abs((smTentX-smTentW2)/smTentW2); 
smTent = smTent.*(1/sum(smTent)); 
%
% plot it...
plot(smTentX,smTent)
%
