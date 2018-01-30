t=0;
for j=1:1000
    d = rolldice;
    if d > 6 || d < 1
        disp("Your dice sucks!");
        t = 1;
        break
    end
    
end
if t == 0
    disp("Hey it works yo");
end

m = 0;
s(6) = 0
for i=1:100000
    d = rolldice;
    s(d) = s(d) + 1
    m = m + d;
end

m

m = m/100000

s