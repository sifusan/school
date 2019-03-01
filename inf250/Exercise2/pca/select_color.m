function [color]=select_color(n)
    switch(n)
        case 0
            color = 'red';
        case 1
            color = [1 0.5 0.5];
        case 2
            color = 'yellow';
        case 3
            color = 'cyan';
        case 4
            color = [0 1 0.5];
        case 5
            color = 'cyan';
        case 6
            color = 'blue';
        case 7
            color = [0.1 0.4 0.8];
        case 8
            color = 'magenta';
        case 9
            color = [1 0.2 0.7];
    end
end