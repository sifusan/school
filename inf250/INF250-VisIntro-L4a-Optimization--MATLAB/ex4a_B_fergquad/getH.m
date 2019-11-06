%
% get the Hessian
function [huu huv hvu hvv] = getH(u, v, MG, MH)
    huu = [6*u          2       zeros(length(u),2)                   ] * MH * MG * MH.' * ... 
          [  v.*v.*v    v.*v    v                   ones(length(v),1)].'; 
    huv = [3*u.*u     2*u       ones(length(u),1)  zeros(length(u),1)] * MH * MG * MH.' * ... 
          [3*v.*v     2*v       ones(length(v),1)   ones(length(v),1)].'; 
    hvu = huv; 
    hvv = [  u.*u.*u    u.*u    u                   ones(length(u),1)] * MH * MG * MH.' * ... 
          [6*v          2       zeros(length(v),2)                   ].'; 
%
