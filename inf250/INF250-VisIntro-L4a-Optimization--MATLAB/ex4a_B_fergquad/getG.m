%
% get the gradient
function [gu gv] = getG(u, v, MG, MH)
    gu = [3*u.*u    2*u    ones(length(u),1) zeros(length(u),1)] * MH * MG * MH.' * ... 
         [  v.*v.*v   v.*v    v               ones(length(v),1)].'; 
    gv = [  u.*u.*u   u.*u    u               ones(length(u),1)] * MH * MG * MH.' * ... 
         [3*v.*v    2*v    ones(length(v),1) zeros(length(v),1)].'; 
%
