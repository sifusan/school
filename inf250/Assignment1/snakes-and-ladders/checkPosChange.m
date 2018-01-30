function [pos,soundNumber] = checkPosChange(pos)

% This function checks, if a special field as entered
% (and changes pos and soundNumber accordingly): 

soundNumber = 0;

if(pos == 8)
    pos = 4;
    soundNumber = 1;
end

if(pos == 18)
    pos = 1;
    soundNumber = 1;
end

if(pos == 26)
    pos = 10;
    soundNumber = 1;
end

if(pos == 39)
    pos = 5;
    soundNumber = 1;
end

if(pos == 51)
    pos = 6;
    soundNumber = 1;
end

if(pos == 54)
    pos = 36;
    soundNumber = 1;
end

if(pos == 56)
    pos = 1;
    soundNumber = 1;
end

if(pos == 60)
    pos = 23;
    soundNumber = 1;
end

if(pos == 75)
    pos = 28;
    soundNumber = 1;
end

if(pos == 83)
    pos = 45;
    soundNumber = 1;
end

if(pos == 85)
    pos = 59;
    soundNumber = 1;
end

if(pos == 90)
    pos = 48;
    soundNumber = 1;
end

if(pos == 92)
    pos = 25;
    soundNumber = 1;
end

if(pos == 97)
    pos = 87;
    soundNumber = 1;
end

if(pos == 99)
    pos = 63;
    soundNumber = 1;
end

if(pos == 3)
    pos = 20;
    soundNumber = 2;
end

if(pos == 6)
    pos = 14;
    soundNumber = 2;
end

if(pos == 11)
    pos = 28;
    soundNumber = 2;
end

if(pos == 15)
    pos = 34;
    soundNumber = 2;
end

if(pos == 17)
    pos = 74;
    soundNumber = 2;
end

if(pos == 22)
    pos = 37;
    soundNumber = 2;
end

if(pos == 38)
    pos = 59;
    soundNumber = 2;
end

if(pos == 49)
    pos = 67;
    soundNumber = 2;
end

if(pos == 57)
    pos = 76;
    soundNumber = 2;
end

if(pos == 61)
    pos = 78;
    soundNumber = 2;
end

if(pos == 73)
    pos = 86;

    soundNumber = 2;
end

if(pos == 81)
    pos = 98;
    soundNumber = 2;
end

if(pos == 88)
    pos = 91;
    soundNumber = 2;
end
