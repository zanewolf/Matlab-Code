function [ clean ] = sortHeader(messy, broom )
[dust dirt hair]=xlsread(messy) %find the num, text, and raw
[r c]=size(hair) %find the size of the raw
for x = 1:c %for all the columns in raw...
    if strcmp(hair{1,x}, broom)%check to see if that is the column header specified
        ugh=x %if it is, then record the column index
    end
end
headers = hair(1,:) % store all the headers 
hair(1,:)=[] %delete all the headers from raw
[sweep mop] = sort(hair(:, ugh)) %sort all the values corresponding to the column specified
clean = [headers; hair(mop,:)] %concatenate the headers with the sorted raw info
%sortHeader function to take in a file of information and sort all the info
%based on the name of the column header specified. 
%Usage: function [ clean ] = sortHeader(messy, broom )
end
