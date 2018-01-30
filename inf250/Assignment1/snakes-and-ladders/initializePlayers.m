function [playername1,playername2,playercolor1,playercolor2] = initializePlayers()

% Initialization of the players
fprintf('\n\t\t\t Welcome to The Game Of SNAKES & LADDERS')

%% Player 1
fprintf('\n Entering the name of player #1')
playername1 = input('\nYour name is: ','s');

fprintf('\n Welcome, %s!',playername1)

% Make sure the player chooses the right color
colorOK = 0;
while(colorOK==0)
    fprintf('\n Please specify the colour of your tile :')
    fprintf('\n 1: red; 2: yellow; 3: blue; 4: green; 5: cyan; 6: magenta; 7: white')
    playercolor1 = input('\n You select colour number: ');
    if (playercolor1 >=1 && playercolor1<=7)
        colorOK = 1;
    end
end

%% Player 2
fprintf('\n Entering the name of player #2')
playername2 = input('\nYour name is: ','s');

% Make sure the player chooses the right color
colorOK = 0;
sameColorChoosen = 0;
while(colorOK==0 || sameColorChoosen)
    fprintf('\n Welcome, %s!',playername2)
    fprintf('\n Please specify the colour of your tile :')
    fprintf('\n 1: red; 2: yellow; 3: blue; 4: green; 5: cyan; 6: magenta; 7: white')
    playercolor2 = input('\n You select colour number: ');
    while (playercolor1 == playercolor2)
        fprintf('\n Please select a different color than %s', playername1)
        fprintf('\n 1: red; 2: yellow; 3: blue; 4: green; 5: cyan; 6: magenta; 7: white')
        playercolor2 = input('\n You select colour number: ');
    end
    if (playercolor1 >=1 && playercolor1<=7)
        colorOK = 1;
    end
end
