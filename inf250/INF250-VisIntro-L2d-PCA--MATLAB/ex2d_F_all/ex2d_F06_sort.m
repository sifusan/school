%
% Next, we sort everything by 
% the absolute value of the 
% eigenvalues
%
Lz1D = diag(Lz)
%
[Lz1Dsorted, Lz1Dsorting] = sort(-1*Lz1D)
%
LzS = Lz1D(Lz1Dsorting)
VzS = Vz(:,Lz1Dsorting)
%
%
