%
% evaluate the patch
function s = getS(u, v, MG, MH)
    s = [u.*u.*u u.*u u ones(length(u),1)] * MH * MG * MH.' * ...
        [v.*v.*v v.*v v ones(length(v),1)].';
%
