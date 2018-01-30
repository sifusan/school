clear all
x(1)=-4;
tic
for j=1:1000
    x(j+1) = x(j)-(exp(x(j))-tan(x(j)))/(exp(x(j))-sec(x(j))^2)
    fc = exp(x(j+1))-tan(x(j+1))
    
    if abs(fc)<10^(-5)
        break
    end
end
x(j+1)
fc
toc