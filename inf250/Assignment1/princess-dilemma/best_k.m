function rank = best_k(k, array)
%best_k Gets the ranking of the wedded prince
%
%  Description:
%   - You invite the princes in arbitrary order
%   - The first k you will turn down.
%   - You marry the next one that will be better than all of the first k
%   - If it turns out there are no more candidates, you don't marry
%
%  The rank is defined as the position of the element in the sorted list
%  rank 1 belongs to the best prince, rank 2 to the second best and so on.
%  
%  Example of the algorithm
%   input: k=2, array=[42 47 1 2 3 17 106 107 9 10]
%   output: 2
%
%   the first two princes you have to turn down, i.e. 42 and 47,
%   you continue on with 1, 2, 3, and 17, but none of those is better
%   than 47. Then you meet 106 and marry him. You don't get to invite 
%   anyone else. The rank you get from the ordered array
%
%       [107 106 47 42 10 9 3 2 1]   
%
%   106 is ranked 2.
%
%   Running the algorithm with k=1 and the same array will return 3.
%   Running the algorithm with k=9 and the same array will return -1.
    
    if k > 10 || k <= 0
        %fprintf("Invalid value '%d' for k ", k);
        %fprintf("\nPlease try again with 0 < k <= 10");
        rank = -1;
    elseif isempty(array)
            rank = -1;
    else
        turn_down = array(1:k);
        invite = array(k+1:end);

        %fprintf("You turn down");
        disp(turn_down);
        %fprintf("\nYou are left with");
        disp(invite);

        the_one = -1;
        found = 0;
        
        for i=1:length(turn_down)
            if found == 1
                break;
            end
             for j=1:length(invite)
                 if found == 1
                     break;
                 end
                 %fprintf("Comparing %d to %d\n", invite(j), turn_down(i));   
                 if invite(j) > turn_down(i)
                     %fprintf("Found candidate: %d\n", invite(j)); 
                     for h=1:length(turn_down)
                         if invite(j) < turn_down(h)
                             break;
                         elseif h == length(turn_down) && invite(j) > turn_down(h)
                             the_one = invite(j);
                             %fprintf("Found the one with a value of %d\n", the_one); 
                             found = 1;
                             break;
                         end
                     end
                 end
             end
        end
                
        sorted_princes = sort(array, 'descend');          
        %sorted_princes = fliplr(sort(array));
        rank = -1;
        for i=1:length(sorted_princes)
            if sorted_princes(i) == the_one
                rank = i;
            end
        end
    end
end

