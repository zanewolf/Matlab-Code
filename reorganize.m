
function [ phonebook ] = reorganize( outdated, notmyfriends )
names = {} %initializes variable
for x = 1:length(outdated) %for all the structures in the phonebooks
    people = outdated(x).lastname %find the last name
    names = [names {people}] %stick the last name in the variable
end
[newnames, place] = sort(names) %sort the variable with the last names
outdated = outdated(place) %reorganize the phonebook accordingly
if isfield(outdated, 'faxnumber') %if there is a faxnumber field...
    outdated = rmfield(outdated, 'faxnumber')
end%delete it
if isfield(outdated, 'pagernumber') %if there is a pagernumber field...
    outdated = rmfield(outdated, 'pagernumber') %delete it
else 
    outdated = outdated %you're not too old...
end
z=length(outdated)-length(notmyfriends) %find how many structures should be left after deletions...
for z = 1:z %for each structure not deleted...
    for x = 1:length(notmyfriends) %for each person you've lost contact with...
        if strcmp(outdated(z).firstname, notmyfriends(x)) %see if you still have them in the phonebook. If you do...
            outdated(z) = [] %good bye.             
        end
    end
end
phonebook = outdated %set the final output varialbe
end

%Function to update a phone book. It will alphabetize by last name, delete
%fax numbers and pager numbers, and remove "pages" containing people who
%have not been contacted recently. 
%Usage:function [ phonebook ] = reorganize( outdated, notmyfriends )