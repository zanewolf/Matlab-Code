
function [ interestingformat ] = LLcsvread(toomanycommas )
bleck = fopen(toomanycommas, 'r'); %opens the file
line = fgetl(bleck); %gets the current line
x=0; %sets the row variable
while ischar(line) %as lone as we haven't reached the end...
    x=x+1; %add to the row variable
    [cell rest] = strtok(line, ','); %separate out all the actual characters from the commas
    y=0; %set the column variable
    while ~isempty(cell) %as long as there is a next column...
        y=y+1; %add to the variable
        if isnumeric(cell) %if it's a straight number, just in case...
            cell=num2str(cell); %convert to string
        end
        biggercell(x,y)={cell};  %fill that row,column index with the word
        [cell rest] = strtok(rest, ','); %find the next word
    end   
    line = fgetl(bleck); %find the next line
end
    interestingformat=biggercell %set the final variable
    fclose(bleck); %close the file

%Function to take in a file consisting of data and separating symbols and to output
%the data with just the information, no commas, in cell format. The rows in the
%outputted cell will correspond to the lines in the file. 
%Usage: function [ interestingformat ] = LLcsvread(toomanycommas )

end


