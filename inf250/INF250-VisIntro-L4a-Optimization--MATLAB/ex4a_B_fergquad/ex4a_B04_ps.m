%
% approximate patch around ps 
% up to 2nd-order terms according to 
%    s(x-ps) = s(ps) + g(ps).' * (x-ps) + 0.5 * (x-ps).' * H(ps) * (x-ps)
ps = [0.2; 0.8]; psu = ps(1); psv = ps(2); % starting point ps
sh = getS(psu, psv, G, M_H); % patch-value at ps
[guh, gvh] = getG(psu, psv, G, M_H); % gradient at ps
[huuh, huvh, hvuh, hvvh] = getH(psu, psv, G, M_H); % Hessian at ps
if min(eig([huuh huvh; hvuh hvvh])) > 0 
    fprintf('Yes, positive definite!\n'); 
end
% approximation A, to be evaluated at the same locations as S
A = zeros(size(S)); % initialization
for i = 1:length(v)
    for j = 1:length(u)
        uh = u(j); vh = v(i); % (u,v) of "here"
        A(j,i) =  sh + ...
                  [guh gvh] * [uh-psu; vh-psv] + ...
                 ([uh-psu vh-psv] * [huuh huvh; hvuh hvvh] * [uh-psu; vh-psv])/2; % evaluate the approximation "here"
    end
end
%
