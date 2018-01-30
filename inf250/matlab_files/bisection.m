clear all

xr=-2.8;
xl=-4;

for j=1:1000
    xc=(xl+xr)/2;
    fc=exp(xc)-tan(xc);
    
    if fc > 0
        xl=xc;
    else
        xr=xc;
    end
    
    if abs(fc)<10^(-5)
        break
    end
end

xc
fc