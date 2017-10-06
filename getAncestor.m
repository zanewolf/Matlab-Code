
function [familytree] = getAncestor( sons, fathers, spring )
season = [spring]; %initializes variable
tree = {spring}; %starts the cell to contain the genealogy tree
while ~isempty(season) %as long as there is a father to be matched...
    position = []; %initializes position variable
    for x=1:length(sons) %run the loop once for each cell in the cell arrays
        match = strcmp(sons{x}, season); %determines whether the cells in the array match the given name
        position = [position match]; %sets up a vector of trues and falses
    end
    next = find(position);%finds the starting position, the index of which string matched
    season = fathers{next}; %finds the name of the corresponding father string
    tree{end+1}= season; %adds the name to the cells
end
tree(end)=[]; %deletes the empty name
familytree = tree(end:-1:1); %reverses the order of the cells and sets the final outputs

% Function to trace a family's line. Given a starting name, the function will 
% reference two cells, one of sons' names, one of fathers' names, and will determine
% who fathered whom. It will terminate at the end(/beginning) of the family tree. 
% Usage: [familytree] = getAncestor( sons, fathers, spring )

end
