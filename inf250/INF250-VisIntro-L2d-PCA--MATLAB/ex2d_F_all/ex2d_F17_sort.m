%
% Next, we sort everything by the absolute value of the eigenvalues
%
Lu1D = diag(Lu)
%
[Lu1Dsorted, Lu1Dsorting] = sort(-1*Lu1D)
%
LuS = Lu1D(Lu1Dsorting)
VuS = Vu(:,Lu1Dsorting)
%
% And compare the result to LzS and VzS
LzS
VzS
%
%
