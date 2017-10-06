% Function Name: handChopsticks
% Inputs  (2): - (struct) a structure containing the orginal number of 
%                         fingers on each hand for the game of chopsticks
%              - (cell)   a cell array containing the moves for chopsticks
% Outputs (1): - (struct) a structure containing the final number of
%                         fingers extended
function [ sillygame ] = handChopsticks( duh, moves )
r = length(moves);
for x = 1:r
[firsthand rest] = strtok(moves{x}, ' '); %finds and compares the moves to potential moves possible
[word rest] = strtok(rest, ' ');
[secondhand rest] = strtok(rest, ' ');
fingers = duh.(firsthand);
digits = duh.(secondhand);
a = strcmp(firsthand,'LH_A') ;
b= strcmp(firsthand,'LH_B');
c = strcmp(secondhand,'LH_A');
d= strcmp(secondhand,'LH_B');
e = strcmp(firsthand,'RH_A') ;
f = strcmp(firsthand,'RH_B');
g = strcmp(secondhand,'RH_A');
h = strcmp(secondhand,'RH_B');
j = a==1|e==1; %first or second hand is A
k= c==1 |g==1; %first or second hand is A
l = b==1|f==1; %first or second hand is B
m = d==1|h==1; %first or second hand is B
if (j==1) & k ==1 %if he's adding to his own hand
        a = mod(fingers+digits,2);
        if a == 0 %digits are even
            duh.(firsthand)=(fingers+digits)./2; %split the sum
            duh.(secondhand) = (fingers+digits)./2;
        else 
            duh.(firsthand) = digits; %digits are odd, switch
            duh.(secondhand)= fingers;
        end
        
elseif (l==1) & (m==1) %if the other play is adding to his own hand
        a = mod(fingers+digits,2);
        if a == 0
            duh.(firsthand)=(fingers+digits)./2; %same deal as above
            duh.(secondhand) = (fingers+digits)./2;
        else 
            duh.(firsthand) = digits;
            duh.(secondhand)= fingers;
        end
        
elseif (l==1) & (k==1) %if player a is adding to player b, player b gets more fingers
        duh.(secondhand) = fingers+digits;
        
    

elseif (j==1)&(m==1)
        duh.(secondhand) = fingers + digits; %if player b is adding to player a, player a gets more fingers
   
end
end
duh = duh; %reset the structure, just as a check of values
almostdone= fieldnames(duh); %get the fieldnames
l = length(almostdone);
tobedeleted=[]; %initialize the variable
for x = 1:l %for the number of fields...
    finishline = almostdone(x); %finds the fieldname at the position
    a= getfield(duh, (finishline{1})); %gets the value from duh in that field
    if a>=5 %if it's greater than or equal to five
        tobedeleted = [tobedeleted finishline{1}]; %put it in the deleted pile
    else
        tobedeleted = tobedeleted; %if not, whatever...
    end
end
if ~isempty(tobedeleted) %if this is not empty ( there is something to be deleted)
    sillygame = rmfield(duh, (tobedeleted)); %then delete it
else
    sillygame = duh; %if not, whatever...
end
    


% a function to determine the resulting hand of a sets of moves in the game chopsticks. 
%Given a beginning number of fingers and a set of moves, this function will
%add or take away fingers and hands as necessary. 
%Usage: function [ sillygame ] = handChopsticks( duh, moves )

end
