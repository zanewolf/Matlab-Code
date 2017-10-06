function [ beautiful ] = findQuote( shakespeare, poetry )
sonnet = fopen(shakespeare, 'r'); %open the file
line = fgetl(sonnet);%get the current line in the file
if ~isempty(strfind(line, '- by')) %find out if there is a title line
    title = 1;
else 
    title = 0;
end
x=1; %set the line variable equal to zero
while ischar(line) %while you haven't reached the end of the line
        a=strfind(line, poetry);
        if ~isempty(a) %if there is an index...
            foundit=x; %record the line number
        end
        x=x+1 ;%move the line variable along
        line=fgetl(sonnet); %get the next line
end
fclose(sonnet); %because we need to go through it twice, (well, I do, 
%anyway....), close it...
prose = fopen(shakespeare, 'r'); %and open the file again
line2=fgetl(prose); %get the first line
y=1; %set the initial variable
quote = []; %set up the empty quote box
start = foundit-1; %finds the value of the line above
finish = foundit+1; %and the line beloew
while ischar(line2) %as long as we're not at the end...   
    if y ==start %if you're at the first line to be quotes
        quote =[quote line2]; %add it to the quote box
    elseif y ==foundit %if you're at the second line (the one we really want)
        quote = [quote '/' line2]; %add it to the quote box, plus a slash
    elseif y == finish %if you're at the last line
        quote = ['"' quote '/' line2 '"']; %put quote marks and a slash and add it to the quote box
    end
    line2 = fgetl(prose); %grab the next line
     y=y+1; %move the variable along
end
if title==1 %if there was a title line...
    index = sprintf('(%d-%d)', start-1, finish-1); %start the line indexing one below the real line
else 
    index = sprintf('(%d-%d)', start, finish); %if there wasn't, go ahead and use those numbers
end
beautiful = [quote ' ' index]; %concatenate it to the quote
fclose(sonnet); %and close....beautifully done, sir william of the feather pen! 


%Function to read a text file and find the line in which the specified word
%or phrase is found. It will then quote back the line above and the line
%below the desired line, as well, and the lines numbers for your reference.
%
%Usage: function [ beautiful ] = findQuote( shakespeare, poetry )


end

