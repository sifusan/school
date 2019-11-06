%
% do a gradient-descent from (us, vs)...
% and fill a matrix M with the steps 
n = 51; % prepare for n-1 steps
M = zeros(n,10); % one step per row: [u, v, s, gu, gv, |g|, dt, dres, d, ds(d)]; 
% initialize
us = 0.9; vs = 0.3; % starting coordinates
ss = getS(us, vs, G, M_H); % patch-value at starting coords.
[gus gvs] = getG(us, vs, G, M_H); % gradient at starting coords.
% stopping-epsilon and step size
eps = 0.0001; % "zero"-epsilon for grad.-length
dt = 0.2; % choose a small step-size  
dres = 4; % initialize the number of points for the approximate line search
ds = dt/dres : dt/dres : dt; % several ds to check for a line minimum
uns = zeros(length(ds),1); % used during line search
vns = zeros(length(ds),1); % used during line search
sns = zeros(length(ds),1); % used during line search
M(1,:) = [us vs ss gus gvs norm([gus gvs]) dt dres -1 -1]; % first line in results matrix
fprintf('Starting at (%.3f,%.3f), path-value %.3f, doing (at most) %d steps...\n',us,vs,ss,n-1); 
for i = 2:length(M(:,1)) % do (at most) n-1 steps
    ip = i - 1; % index of previous solution
    for d = 1:length(ds) % approximate line search
        uns(d) = M(ip,1) - ds(d) * M(ip,4); % u-coord. along line 
        vns(d) = M(ip,2) - ds(d) * M(ip,5); % v-coord. along line
        sns(d) = getS(uns(d), vns(d), G, M_H); % patch-value along line
        if (uns(d) < 0) | (uns(d) > 1) | (vns(d) < 0) | (vns(d) > 1); d = d - 1; break; end % left domain?
        if (d > 1) & (sns(d) > sns(d-1)); d = d - 1; break; end % going uphill again
    end
    if (d < 1); fprintf('Already first step outside at step %d!\n',i-1); i = i - 1; break; end % unlucky try?
    [sn, sni] = min(sns(1:d)); % select the minimal patch-value along line 
    if sn > M(ip,3) % if the found minimum is larger than the last value
        dres = 2 * dres; % increase resolution of line search 
        ds = dt/dres : dt/dres : dt; % setup new spacing for line search 
    end
    un = uns(sni); % u-coord. of the minimum along line 
    vn = vns(sni); % v-coord. of the minimum along line 
    [gun, gvn] = getG(un, vn, G, M_H); % get new gradient-value
    M(i,:) = [un, vn, sn, gun, gvn, norm([gun gvn]) dt dres d ds(sni)]; % fill in line
    if M(i,6) < eps; break; end % if converged, stop
    if (un < 0) | (un > 1) | (vn < 0) | (vn > 1); fprintf('Iteration left the domain...\n'); break; end % left the domain?
end
if (i > 1) 
    fprintf('... landed at (%.3f,%.3f) after %d steps, patch-value %.3f, ',M(i,1),M(i,2),i-1,M(i,3)); 
    fprintf('length of last step: %.3f\n',norm([M(i,1)-M(i-1,1) M(i,2)-M(i-1,2)])); 
end 
%
fprintf('    u         v         s(u,v)   [gu        gv]      |g|        dt        dres      d         ds(d)\n'); 
disp(M(M(:,6)>0,:));
%

