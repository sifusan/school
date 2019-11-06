%
% evaluate patch at several (u,v)-locations
u = (0:0.02:1).'; % u-locations ... choose a resolution for the evaluation
v = (0:0.02:1).'; % v-locations
%
% evaluate the patch at all (u,v)-locations
S = getS(u, v, G, M_H);
%
