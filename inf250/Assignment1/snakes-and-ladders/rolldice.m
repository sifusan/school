function [d]=rolldice()
sides=1:6;
r=round(rand()*5, 0)+1;
d=sides(r);
end