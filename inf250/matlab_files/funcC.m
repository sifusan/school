function [f A B C]=funcC(x)
A=2; B=3;
C=f_param(A,B);
f=func(x,C);

function C=f_param(A,B)
C=A^2+B^2;

function f=func(x,C)
f= C*sin(C*x);

function [t]=test
t=5;