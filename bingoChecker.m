function [ bingo, senior] = bingoChecker( bongo, moves )

if isempty(moves) %automatically sets the bingo board if no moves are made
    bingo = bongo;
else
    mask = moves==','; %but if moves are made, remove the columsn
    moves(mask) = [];
    [col rest] = strtok(moves, '12345'); %separte the moves into columns and rows
    while ~isempty(rest) %as long as there is a move...
        a = col=='B'; %the move is in column B
        b = col=='I'; %in column I
        c = col=='N'; % in column N
        d = col=='G'; %in column G
        e = col=='O'; %in column O
        [row rest] = strtok(rest, 'BINGO'); %if there are more moves to make, the next column begins...
        row = str2num(row); %need a number
        if a ==1 %first row
            bongo(row, 1) = true; %intersection of whichever row, first column is true 
        elseif b ==1
            bongo(row, 2) = true; %" second column "
        elseif c ==1
            bongo(row, 3) = true; %" third "
        elseif d ==1
            bongo(row, 4) = true; %" fourth " 
        else 
            bongo(row, 5) = true; %" fifth "
        end
        [col rest] = strtok(rest, '12345'); %as long as there are more moves to make, separate them...
        
    end
end %made all moves possible, but need to determine a winner
bingo=bongo; %sets the output
[r, c] = size(bingo); %determines the size of the board
omg1=[]; %sets the initial variable
for Row = 1:r %runs through the number of rows possible
        if all(bingo(Row,:))==1 %runs through each row, checking for all true values
            omgB = true; %we have a winner
        else 
            omgB = false; %try again
        end
        omg1 = [omg1 omgB]; %concatenates the results of each row to be checked later
end
omg2 = []; %sets the initial variable
for Col=1:c %runs through the number of columns possible
        if all(bingo(:, Col))==1 %runs through each column, checking for all true values
            omgA = true; %we have a winner
        else 
            omgA = false; %try again
        end
        omg2 = [omg2 omgA]; %concatenates the results of each row to be checked later
end
if all(diag(bingo))==1 %runs through the first diagonal of the bingo board, checking for all true values
    omg3 = true; %we have a winner
else
    omg3 = false; %try again
end
if all(diag(bingo(:, end:-1:1)))==1 %checks the other diagonal...
    omg4 = true; %yay!
else
    omg4 = false;%aww...
end
if any(omg1)==1 %as long as there is one valid bingo row...
    omg1 = true; %its all true
end
if any(omg2)==1 %as long as there is one valid bingo column
    omg2=true; %its all true.
end
tally = [omg1 omg2 omg3 omg4]; %concatenates all the possible ways to have bingo
if any(tally) ==1 %if any of them are valid...
    senior = true; %Congratulations!!
else 
    senior = false; %aww...better luck next time.
end  
%function to take in an array resembling a bingo board (in logicals) and a
%vector resembling a set of calls made during the game (e.g. N1, B2, etc)
%and to replace the corresponding indices in the board with the new value.
%Then it will give the caller the new board and the result--whether there
%is a winner or not.
% %usage: 
% function [ bingo, senior] = bingoChecker( bongo, moves )
% 
% if isempty(moves)
%     bingo = bongo;
% else
%     mask = moves==',';
%     moves(mask) = [];
%     [col rest] = strtok(moves, '12345');
%     while ~isempty(rest)
%         a = col=='B';
%         b = col=='I';
%         c = col=='N';
%         d = col=='G';
%         e = col=='O';
%         [row rest] = strtok(rest, 'BINGO');
%         row = str2num(row);
%         if a ==1
%             bongo(row, 1) = true;
%         elseif b ==1
%             bongo(row, 2) = true;
%         elseif c ==1
%             bongo(row, 3) = true;
%         elseif d ==1
%             bongo(row, 4) = true;
%         else 
%             bongo(row, 5) = true;
%         end
%         [col rest] = strtok(rest, '12345');
%         
%     end
% end
% bingo=bongo
% [r, c] = size(bingo);
% omg1=[];
% for Row = 1:r
%         if all(bingo(Row,:))==1
%             omgB = true;
%         else 
%             omgB = false;
%         end
%         omg1 = [omg1 omgB];
% end
% omg2 = [];
% for Col=1:c
%         if all(bingo(:, Col))==1
%             omgA = true;
%         else 
%             omgA = false;
%         end
%         omg2 = [omg2 omgA];
% end
% if all(diag(bingo))==1
%     omg3 = true;
% else
%     omg3 = false;
% end
% if all(diag(bingo(:, end:-1:1)))==1
%     omg4 = true;
% else
%     omg4 = false;
% end
% if any(omg1)==1
%     omg1 = true;
% end
% if any(omg2)==1
%     omg2=true;
% end
% tally = [omg1 omg2 omg3 omg4];
% if any(tally) ==1
%     senior = true;
% else 
%     senior = false;
% end 
end
