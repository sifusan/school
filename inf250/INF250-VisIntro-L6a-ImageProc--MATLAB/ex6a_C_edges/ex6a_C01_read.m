%
%
% Edge detection:  1.) image read 
%
close all; clear all; clc; 
%
iA = imread('red.jpg'); %% read an image
iG = rgb2gray(iA); %% convert to grayscale
%
% plot...
subplot(1,2,1), imshow(iA); 
subplot(1,2,2), imshow(iG); 
%
