%
% do a descent from ps,  
% .. stepping towards the minimum of a quadratic approximation, 
%    if it has a flat spot that is a minimum, 
% .. doing a step along the negative gradient, otherwise
n = 51; % n-1 steps to do
M = zeros(n,12); % one step per row: [u, v, s, G, H, case, dres, d]
% initialize...
ps = [0.5; 0.9]; psu = ps(1); psv = ps(2); % starting point 
sh = getS(psu, psv, G, M_H); % patch-value at ps
[guh, gvh] = getG(psu, psv, G, M_H); % gradient at ps
[huuh, huvh, hvuh, hvvh] = getH(psu, psv, G, M_H); % Hessian at ps
if min(eig([huuh huvh; hvuh hvvh])) > 0; ch = 1; % use quadr. approx.
else ch = 2; end;                                % use gradient
% stopping-epsilon and step size
eps = 0.0001; % "zero"-epsilon for grad.-length
dt = .2; % choose a small step-size  
dres = 4; % initialize the number of points for the approximate line search
ds = dt/dres : dt/dres : dt; % several ds to check for a line minimum
uns = zeros(length(ds),1); % used during line search
vns = zeros(length(ds),1); % used during line search
sns = zeros(length(ds),1); % used during line search
M(1,:) = [psu psv sh guh gvh huuh huvh hvuh hvvh ch dres -1]; % first line
fprintf('Starting at (%.3f,%.3f), path-value %.3f, doing (at most) %d steps...\n',psu,psv,sh,n-1); 
for i = 2:length(M(:,1)) % do (at most) n-1 steps
    ip = i - 1; % index of last step
    if M(ip,10) == 1 % use quadr. approx. to step 
        dx = -inv([M(ip,6) M(ip,7); M(ip,8) M(ip,9)]) * [M(ip,4); M(ip,5)]; % step-vector 
        if norm(dx) > 0.2 % rescale to max. 0.2 length
            dx = dx / (5 * norm(dx));  fprintf('Normalized quad.-step.  '); 
        else                           fprintf('Quad.-step.  '); 
        end
        uh = M(ip,1) + dx(1); 
        vh = M(ip,2) + dx(2);          d = 1;
    else
        fprintf('Grad.-step.  '); 
        dx = -[M(ip,4); M(ip,5)]; % step-vector (neg. gradient)
        for d = 1:length(ds) % approximate line search
            uns(d) = M(ip,1) + ds(d) * dx(1); % u-coord. along line
            vns(d) = M(ip,2) + ds(d) * dx(2); % v-coord. along line
            sns(d) = getS(uns(d), vns(d), G, M_H); % patch-value along line
            if (uns(d) < 0) | (uns(d) > 1) | (vns(d) < 0) | (vns(d) > 1); d = d - 1; break; end % left domain?
            if (d > 1) & (sns(d) > sns(d-1)); d = d - 1; break; end % going uphill again
        end
        if (d < 1); fprintf('Already first step outside at step %d!',i-1); i = i - 1; break; end % unlucky try?
        [sh, sni] = min(sns(1:d)); % select the minimal patch-value along line
        if sh > M(ip,3) % if the found minimum is larger than the last value
            dres = 2 * dres; % increase resolution of line search
            ds = dt/dres : dt/dres : dt; % setup new spacing for line search
        end
        uh = uns(sni); % u-coord. of the minimum along line
        vh = vns(sni); % v-coord. of the minimum along line
    end
    [guh, gvh] = getG(uh, vh, G, M_H); % gradient here
    [huuh, huvh, hvuh, hvvh] = getH(uh, vh, G, M_H); % here
    if min(eig([huuh huvh; hvuh hvvh])) > 0; ch = 1; % use quadr. approx.
    else ch = 2; end;                                % use gradient
    M(i,:) = [uh vh sh guh gvh huuh huvh hvuh hvvh ch dres d]; % first line
    if norm([M(i,4); M(i,5)]) < eps; break; end % if converged, stop
    if (uh < 0) | (uh > 1) | (vh < 0) | (vh > 1); fprintf('Iteration left the domain...\n'); break; end % left the domain?
end
fprintf('\n');
if (i > 1) 
    fprintf('... landed at (%.3f,%.3f) after %d steps, patch-value %.3f, ',M(i,1),M(i,2),i-1,M(i,3)); 
    fprintf('length of last step: %.3f\n',norm([M(i,1)-M(i-1,1) M(i,2)-M(i-1,2)])); 
end 
%
fprintf('    u         v         s(u,v)   [gu;       gv]      [huu       huv;      hvu       hvv]      case     dres       d\n'); 
disp(M(M(:,10)>0,:));
%
