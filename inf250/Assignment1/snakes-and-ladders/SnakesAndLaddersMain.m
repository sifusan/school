% This file performs the famous game of Snakes & Ladders
% The rules of the game are:
% Two players participate
% The board is shown in the figure window
% Every player throws the die in his/her turn by pressing (Enter)
% You move on the board as Your die number says
% If You meet a Ladder, just climb it
% If You meet a Snake, just do down with it
% The player who reachs the place #100 first IS THE WINNER

%% Clear the memory
clear all
close all

%% Prepare the game

% Read image and sounds first: 
% Getting the board image: 
board = imread('board.JPG');
% Sound generator for the winner: 
[win,Fsw] = audioread('winner.wav');
winning = [win; win; win; win];
% Sound generator for the ladder:
[ladder,Fsl] = audioread('ladder.wav');
% Sound for moving the game piece: 
[move_piece_sound,Fsm] = audioread('move_gamepiece.wav');

% Initialization of the players -- see initializePlayers.m
[playername1,playername2,playercolor1,playercolor2] = initializePlayers();

% Plotting the board
figure(1)
imshow(board)
pause(2)

fprintf('\n Now let''s begin the game!') 
fprintf('\n Every player throws the die by pressing (Enter).')

% initial positions
pos1 = 0;
pos2 = 0;
check1 = 0;
check2 = 0;

%% Don't stop until someone won
while ((pos1 ~= 100) && (pos2 ~= 100))
    
    %% Player 1 turn
    fprintf('\n\n Your turn, %s ...',playername1)
    
    % Roll the die
    pause
    die1 = rolldice();
    fprintf('\n\n You got: %d',die1)
    pos1 = pos1 + die1;
        
    if (pos1 >= 100)
        pos1 = 100;
        check1 = 2;
    end
    
    % Use moveGamePiece (to be completed, first!) to move the piece:
    fprintf("\n\n Calling moveGamepiece with " + pos1);
    moveGamePiece(die1,pos1,pos2,playercolor1,playercolor2,board,move_piece_sound,Fsm);

    % Check, if a special event happened:  
    [pos1,soundNumber] = checkPosChange(pos1);
    
    % Move the game piece if there was a lader or a snake.
    %This event is always executed!
    moveGamePiece(0,pos1,pos2,playercolor1,playercolor2,board,move_piece_sound,Fsm);

    
    if (check1 == 2)  % Player 1 is the winner
        sound(winning,Fsw)
        pause(5)
        %close
        fprintf('\n Congratulations! %s wins!', playername1)
        break;
    end
    pause(0.5)
    
    %% Player 2 turn
    fprintf('\n\n Your turn, %s ...',playername2)
    
    % Roll the die
    pause
    die2 = rolldice();
    fprintf('\n You got: %d',die2)
    pos2 = pos2 + die2;
        
    if (pos2 >= 100)
        pos2 = 100;
        check2 = 2;
    end
    
    % As above...
    fprintf("\n\n Calling moveGamepiece with " + pos2);
    moveGamePiece(die2,pos2,pos1,playercolor2,playercolor1,board,move_piece_sound,Fsm);

    [pos2,soundNumber] = checkPosChange(pos2);
    
    % Move the game piece if there was a lader or a snake
    %This event is always executed!
    moveGamePiece(0,pos2,pos1,playercolor2,playercolor1,board,move_piece_sound,Fsm);

    
    if (check2 == 2)  % Player 2 is the winner
        sound(winning,Fsw)
        pause(5)
        %close
        fprintf('\n Congratulations! %s wins!', playername2)
        break;
    end    
        
end
