function [ goboom] = minesweeper( minefield )
[r c] = size(minefield); %determines the size
d = r+2; %adds two to the row dimension
e = c+2; %adds two to the column dimension
newfield{d, e}=[]; %creates an empty cell of extra large dimensions
for x= 2:(d-1) %for the inner square
    for y = 2:(e-1) 
        newfield{x,y}=minefield{x-1,y-1}; %place the original minefield in 
        %the inner square
    end
end
a{1,9}=[]; %creates an empty cell
for x = 2:d-1 %look at the inner square
    for y = 2:e-1 %specifically, let's take a look at your bunker...
        if ~strcmp(newfield{x,y},'*') %if there is no bomb, then...
            a = newfield(x-1:x+1, y-1:y+1); %place a three by three square around the bunker
            %and look for mines
            boom =0; %so far so good, no mines (initialize the variable)
            for z = 1:9 %for all the contents of a
                b = class(a{z}); %determine if the ground looks dug up (the class)
                if strcmp(b,'double') %if the ground is good, then there are no new bombs
                    boom=boom;
                elseif strcmp(b, 'char')%if the ground looks dug up, there just might be a bomb...
                    boom=boom+1; %avoid the area and take extreme caution
                end
                newfield{x,y}=boom; %know that your bunker is surrounded by boom number of bombs
            end
        end
    end
end
goboom= newfield(2:end-1,2:end-1); %deletes the border and maps out the playing field
%function to take in a board representing an unplayed game of minesweeper
%and to return a board representing a played game, though it doesn't
%determine a victor, be it the game or the gamer. 
%Usage: function [goboom] = minesweeper( minefield )


end

