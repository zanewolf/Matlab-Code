% Function Name: deepestCell  
% Inputs  (1): - (cell) A 1-dimensional cell array containing any number of
%                       nested cells
% Outputs (2): - (double) The index at which the most nested cell is found
%              - (double) The "depth" of the most nested cell
%                   

%

function [ underthetree, wonderland ] = deepestCell( hopper )
brackets = []; %sets empty vector to keep track of how many times a cell is indexed
for x=1:length(hopper) %sets the length of the loop to run only the same number of cells
    depth=0; %sets initial vector
    b = hopper{x}; %access the first cell
    while iscell(b) %only if the accessed element is still a cell...
        b = b{1}; %access it again
        depth = depth +1; %for each time a pair of brackets is accessed, it is recorded     
    end
    brackets = [brackets depth]; %when the while loop is broken, the number of bracketss accessed is added into the empty vector 
end  
    match = max(brackets)==brackets; %finds the maximum number of brackets, finds it's location
    underthetree = find(match); %sets final variable as indexed position of maximum depth
    wonderland = max(brackets); %sets the final variable as depth
    
 
    
%function to take in a cell array containing multiple cells within cells.
%It will return the cell position with the most number of brackets and the
%number of brackets around that cell. 
%Usage: [ underthetree, wonderland ] = deepestCell( hopper )

end
