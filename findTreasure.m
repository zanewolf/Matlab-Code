% Function Name: findTreasure
% Inputs  (2): - (struct) A 2-dimensional structure array representing a
%                         "treasure map"
%              - (double) A 1x2 vector specifying the row and column (in
%                         that order) that the treasure hunt starts at
% Outputs (2): - (char)   The treasure that was found
%              - (double) The number of sets of instructions that were
%                         followed to find the treasure

%

function [ treasure steps ] = findTreasure( map, start)
r = start(1); %first row spot
c = start(2); %first column spot
step = map(r,c); %find the starting structure
if strcmp(step.treasure,'No treasure found') %if the treasure of the starting
    %struct is NTF, then the pirate is without his booty. 
    booty = []; %no gold or pearls for you...
else %ha, you lucky son of a pirate!
    booty = step.treasure; %you've found treasure!
end
leagues = 0; %initializes the vectore
while isempty(booty) %while the pirate has not found his booty
    compass = step.direction; %he must travel in this direction
    if strcmp(compass, 'North') %this and following steps alters the structure indices as required...
            r = r-step.magnitude;
            c = c;
    elseif strcmp(compass, 'South')
            r = r+step.magnitude;
            c=c;
    elseif strcmp(compass,'East')
            r = r;
            c = c+step.magnitude;
    elseif strcmp(compass,'West')
            r = r ;
            c = c-step.magnitude;
    end
 step = map(r,c); %so, the pirate is at the next location (structure)
 if strcmp(step.treasure, 'No treasure found') %if he's still not found his treasure...
    booty = []; %aww, keep trying. 
 else %else
    booty = step.treasure; %Ha Ha! At least! Gold and silver and pearls galore...maybe. 
 end;
 leagues = leagues+1; %keeps track of times the pirate is out of luck and has to travel...
 
end;
treasure = booty; %sets the final output variables...
 steps = leagues;

%Function to help determine in which direction and how far a pirate has to 
%travel in order to find the treasure on a map. A nxn structure that
%contains three fields(magnitude, direction, and treasure) should be given
%and if treasure = No treasure Found, then the pirate will have to travel
%(magnitude) number of steps in the (direction) direction ('North', 'East',
%'South', or 'West'). When treasure is finally found, the outputs will be
%the content of the treasure and how many times the pirate had to move to
%find the treasure. 
%Usage: [ treasure steps ] = findTreasure( map, start)


end
