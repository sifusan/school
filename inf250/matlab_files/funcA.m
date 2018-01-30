function [fA B] = funcA(x,A)

B = A^2 + cos(A);
fA = sin(B*x);