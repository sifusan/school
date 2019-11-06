%
%
% 1D FFT:  1.) data series (image line)
%
clear all; close all; clc; 
%
iA = imread('red.jpg'); %% read an image file... 
G = double(rgb2gray(iA)); %% convert to grayscale (double)... 
%
lineNo = 260 %% choose one row from the image...  
L = G(lineNo, :); %% and extract it
%
% plot the line (within some image context)... 
delta = 50; 
maxY = max(L)*1.05; 
subplot(1,2,1), imshow(uint8(G(lineNo-delta:lineNo+delta, :))); 
subplot(1,2,2), plot(L), axis([1 800 0 maxY]); 
%
