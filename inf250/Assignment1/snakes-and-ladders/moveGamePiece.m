function  moveGamePiece(dice,activeposition,passiveposition,playercoloractive,playercolorpassive,board,move_piece_sound,Fsm)
% dice: the thrown dice number, 0 indicates a special event such as ladder
% or a snake
% activeposition: the position of the active player in 1 to 100
% passiveposition: the position of the passive player in 1 to 100
% playercoloractive: the color of the active player as number code 1...6
% playercolorpassive: the color of the passive player as number code 1...6
% board: the board image
% move_pice_sound: the sound file for moving the player token
% Fsm: sample rate of the sound file
%% Display the active player
cla
temp = 30:60:570;
r_temp = fliplr(temp);
board_positions = [temp r_temp temp r_temp temp r_temp temp r_temp temp r_temp];

if dice==0

    %TODO:
    %Compute the x and y position of the figures.
    %dice==0 means that a special event just happened, thus you move the
    %token to the final position without transition.
    %The position is given in pixel position of the board, the board has the
    %resolution of 600x600 pixel. Each field is 60x60 pixels big.
   
    %The active position variable tells the position of the player as value
    %between 0 and 100. This is the only variable you need in this section.
    %Note that the player is going to the right in the lowest row, to the
    %left in the second lowest and so on.
    
    pos_x = board_positions(activeposition);
    at_row = ceil(activeposition/10); 
    pos_y = 630 - (at_row * 60);
    
    figure(1)
    hold on
    imshow(board)
    axis([0 600 0 600])

    switch playercoloractive
        case 1  %red
            plot(pos_x, pos_y, '.r', 'MarkerSize',69)

        case 2  %yellow
            plot(pos_x, pos_y, '.y', 'MarkerSize',69)

        case 3  %blue
            plot(pos_x, pos_y, '.b', 'MarkerSize',69)

        case 4  %green
            plot(pos_x, pos_y, '.g', 'MarkerSize',69)

        case 5  %cyan
            plot(pos_x, pos_y, '.c', 'MarkerSize',69)

        case 6  %magenta
            plot(pos_x, pos_y, '.m', 'MarkerSize',69)

        case 7  %while
            plot(pos_x, pos_y, '.w', 'MarkerSize',69)

    end

    %% Display the passive player
    
    %TODO
    %Exactly the same computation as above. This time you change
    %activeposition with passiveposition.
    
    if passiveposition ~= 0
        pos_x = board_positions(passiveposition);
        at_row = ceil(passiveposition/10); 
        pos_y = 630 - (at_row * 60);
    
    
        switch playercolorpassive
            case 1  %red
                plot(pos_x, pos_y, '.r', 'MarkerSize',69)

            case 2  %yellow
                plot(pos_x, pos_y, '.y', 'MarkerSize',69)

            case 3  %blue
                plot(pos_x, pos_y, '.b', 'MarkerSize',69)

            case 4  %green
                plot(pos_x, pos_y, '.g', 'MarkerSize',69)

            case 5  %cyan
                plot(pos_x, pos_y, '.c', 'MarkerSize',69)

            case 6  %magenta
                plot(pos_x, pos_y, '.m', 'MarkerSize',69)

            case 7  %while
                plot(pos_x, pos_y, '.w', 'MarkerSize',69)
        end
    end

else

    for m = 1 : dice
        %TODO
        %Move the figure for the amount of the thrown die, pause on each
        %field shortly! Again use activeposition here!
        
        pos_x = board_positions((activeposition - dice) + m);
        at_row = ceil(((activeposition-dice)+m)/10); 
        pos_y = 630 - (at_row * 60);
        
        figure(1)
        hold on
        imshow(board)
        axis([0 600 0 600])
        
        switch playercoloractive
            case 1  %red
                plot(pos_x, pos_y, '.r', 'MarkerSize',69)

            case 2  %yellow
                plot(pos_x, pos_y, '.y', 'MarkerSize',69)

            case 3  %blue
                plot(pos_x, pos_y, '.b', 'MarkerSize',69)

            case 4  %green
                plot(pos_x, pos_y, '.g', 'MarkerSize',69)

            case 5  %cyan
                plot(pos_x, pos_y, '.c', 'MarkerSize',69)

            case 6  %magenta
                plot(pos_x, pos_y, '.m', 'MarkerSize',69)

            case 7  %while
                plot(pos_x, pos_y, '.w', 'MarkerSize',69)
        end
        

        %% Display the passive player
        
        %TODO
        %The passive figure does not move. Just reuse the code from the
        %first passive figure!
        
        
        if passiveposition ~= 0
        pos_x = board_positions(passiveposition);
        at_row = ceil(passiveposition/10); 
        pos_y = 630 - (at_row * 60);
    
    
            switch playercolorpassive
                case 1  %red
                    plot(pos_x, pos_y, '.r', 'MarkerSize',69)

                case 2  %yellow
                    plot(pos_x, pos_y, '.y', 'MarkerSize',69)

                case 3  %blue
                    plot(pos_x, pos_y, '.b', 'MarkerSize',69)

                case 4  %green
                    plot(pos_x, pos_y, '.g', 'MarkerSize',69)

                case 5  %cyan
                    plot(pos_x, pos_y, '.c', 'MarkerSize',69)

                case 6  %magenta
                    plot(pos_x, pos_y, '.m', 'MarkerSize',69)

                case 7  %while
                    plot(pos_x, pos_y, '.w', 'MarkerSize',69)
            end
        end

        sound(move_piece_sound,Fsm)
        pause(0.3);
    end
    
end

end
