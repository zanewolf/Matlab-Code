function [ out] = cellToStruct( in )
names = {}; %intilize the vector
for x = 1:2:length(in) %for all the odd indices
    names = [names in{x}]; %these are the field names
end
match = []; %initialize the vector
for z = 1:length(in) %for the length of the entire structure array
    a = iscell(in{z}); %determine whether the value is a cell
    match = [match a]; %put it in the vector
end
a = any(match); %find if any spots are cells...
if any(match) %if any are...
    acell=find(match); %find the cell
    numstructs = length(in{acell(1)}); %find the length of the cell to determine to how many structures you will need to create
    k = 1; %initialize a number, not needed
    m = 1; %initialize a second number, not needed
    for k=1:numstructs %for the number of structures...
        for m = 1:length(names) %for the number of names
          newstruct(k).(names{m})=[]; %create empty struct arrays
        end
    end
    x = 1; %initilize a number
    for ndx = 2:2:length(in) %for the even indices
        curval = in{ndx} ;%find the current value
        if iscell(curval) %if the value is a cell of values
            for b = 1:length(newstruct)
                newstruct(b).(names{x})=curval(b); %plug it into the right structure...
            end
            
        else
            for b = 1:length(newstruct) %if it's not
            newstruct(b).(names{x})=curval; %plug it into all the structures
            end
            
        end
        x = x+1; %move the variable up...
    end
    out = newstruct;  %set the final output

else 
        x=2; %if there are no cells
        for k = 1:length(names) %for all the names
            newstruct.(names{k})=in{x}; %insert the values into the name
            x = x+2; %move the value index along
        end
         out = newstruct; %set the final output
end 
     %function to act as the struct() function, assigning odd indices as
     %field names and even indices as values. If an even value is a cell,
     %the inner values will be assigned to corresponding structures. If the
     %value isn't a cell, it will be assigned to all structures. If there
     %are no cell values, however, there will only be one structure output.
     %Usage: function [ out] = cellToStruct( in )
    



