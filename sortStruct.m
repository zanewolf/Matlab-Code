

function [outstarr] = sortStruct( instarr, skills )
if ~isfield(instarr, (skills)) %checks to see if the 'field' provided is 
    %even a field
    outstarr= 'Invalid Field Name'; %if no, you're outta here!
else
    players = getfield(instarr, (skills)); %take a test sample of the skills
    position = class(players); %determines what sort of skill they players have
    number = fieldnames(instarr); %gets the length of the structure (or the waves
    %of the team)
    if strcmp(position, 'char')%if you have stringy skills...
        roster = {}; %intialize the variable
        for x = 1:length(instarr)
        player = instarr(x).(skills); %get the players who have that skills
        roster = [roster {player}]; %and put them together into the variable roster
        end
        [roster, rankings]= sort(roster); %sort the roster alphabetically
        outstarr = instarr(rankings); %reorder the player sheet accordingly
    elseif strcmp(position, 'double') %if the skills are numbers
        roster = []; %initial the variable
        players = num2str(players); %turn the numbers into strings so they 
        %can be dealt with like strings
        for x = 1:length(instarr)
        player = instarr(x).(skills); %find the players who have the skills
        roster = [roster player]; %and put them in the same variable roster
        end
        [roster, rankings]= sort(roster); %sort the roster from lowest to highest
        outstarr = instarr(rankings); %and reorder the player sheet accordingly
    end
end

%Function to take in a structure array, look at one particular field in the
%structur (spanning all the structures), sort them either alphabetically
%(with lowercase after uppercase) or numerically (lowest to highest), and
%then to sort the entire structure based on the sorted field. If the field 
%is not valid, you will be told so. 
%Usage: function [outstarr] = sortStruct( instarr, skills )
