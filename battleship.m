%I'm sorry this is so long....
function [ sunkships] = battleship( targetacquired, ocean)
[eyes radar sonar]= xlsread(ocean); %open the file
if isempty(targetacquired) %determine if there are any ships in the ocean
    sunkships={}; %if not, return the original
end
  AC=5; %the length of the boats...
  B=4;
  S=3;
  D=3;
  P=2;
  for x = 1:length(targetacquired) %for each coordinate
    if targetacquired{x}(1)=='A' %check the rows...
        row = 1;
    elseif targetacquired{x}(1)=='B'
        row = 2;
    elseif targetacquired{x}(1)=='C'
        row = 3;
    elseif targetacquired{x}(1)=='D'
        row=4;
    elseif targetacquired{x}(1)=='E'
        row = 5;
    elseif targetacquired{x}(1)=='F'
        row = 6;
    elseif targetacquired{x}(1)=='G'
        row = 7;
    elseif targetacquired{x}(1)=='H'
        row = 8;
    elseif targetacquired{x}(1)=='I'
        row = 9;
    elseif targetacquired{x}(1)=='J'
        row = 10;
    end
    if targetacquired{x}(2)=='1' %check the columns
        if length(targetacquired{x})==3
            if targetacquired{x}(3)=='0'
            column=10;
            end
        else
            column = 1;
        end  
    elseif targetacquired{x}(2)=='2'
        column = 2;
    elseif targetacquired{x}(2)=='3'
        column = 3;
    elseif targetacquired{x}(2)=='4'
        column = 4;
    elseif targetacquired{x}(2)=='5'
        column = 5;
    elseif targetacquired{x}(2)=='6'
        column = 6;
    elseif targetacquired{x}(2)=='7'
        column=7;
    elseif targetacquired{x}(2)=='8'
        column = 8;
    elseif targetacquired{x}(2)=='9'
        column=9;
    end
    %now that we have the coordinates, check the waters
    if isempty(radar{row, column}) %if there is nothing there
        radar{row, column}='O'; %you missed! 
    elseif radar{row, column}=='AC' %else, if the AC is there..
        radar{row, column}='X'; %you hit it!
        AC=AC-1; %and now the boat is smaller
    elseif radar{row, column}=='B' %if B is there...
        radar{row, column}='X'; %you hit it!
        B=B-1; %and the boat is smaller
    elseif radar{row, column}=='P' %if P is there...
        radar{row, column}='X'; %you hit it!
        P=P-1; %and the already realy tiny boat is smaller
    elseif radar{row, column}=='D' %if the D is there...
        radar{row, column}='X'; %you hit it!
        D=D-1; %and the boat is smaller
    elseif radar{row, column}=='S' %if the sub is there
        radar{row, column}='X'; %you somehow managed to hit it!
        S=S-1; %and the sub is smaller
    end 
  end
%     %now check how many sunk ships....
    sunkships = {};%set the output variable
    if AC==0 %if there is nothing left of the AC...
        sunkships{end+1}='Aircraft Carrier'; %add it to the list
    end
    if B==0 %if there is nothing left of the B
        sunkships{end+1}= 'Battleship'; %add it to the list
    end
    if D==0 %if there is nothing left of the D
        sunkships{end+1}='Destroyer'; %add it to the list
    end
    if S==0 %if there is nothing left of the S
        sunkships{end+1}='Submarine'; %Add it to the list
    end
    if P==0 %and if there is nothing left of P
        sunkships{end+1}='Patrol Boat'; %add it to the list
    end
sunkships = sort(sunkships); %and because the gov officials want a neat list, sort it alphabetically...
[name code]=strtok(ocean, '.'); %separates the original file name into two parts
filename = [name '_solution' code]; %inserts _final between the actual name and the file tag
xlswrite(filename, radar); %writes the new ocean waters to a new file
            
%battleship is a function that reads a file representing the game
%board with all the various boats positioned on it and takes in a cell with
%a bunch of strings representing the rows and columns a player shoots a
%missile at. If the player is lucky and hits a boat, the boat label
%(AC=Aircraft Carrier, D=Destroy, P=Patrol Boat, S=Submarine, B=Battleship)
%hit will be replaced with an 'X'. If the player misses, the spot will be
%filled with an 'O'. The function will return a cell containing the names
%of the boats that were hit in their entirety and a new file consisting of
%the new board, completed with X's and O's. 
%Usage: function [ sunkships] = battleship( targetacquired, ocean)
end
