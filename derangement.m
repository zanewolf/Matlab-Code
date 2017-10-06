
function [ ghost ] = derangement( spooky ) %because it's halloween! 

if spooky<=0 %if the number is invalid
    ghost='Invalid Input'; %the ghost will tell you in a very scary manner
else %otherwise...
    if spooky==1 %if the haunted house sucks on the one to infinity scale
        ghost=0; %there are no ghosts
    elseif spooky==2 %if the haunted house sucks marginally less
        ghost=1; %there is only one ghost
    else %you've found a relatively decent haunted house
        ghost = (spooky-1).*(derangement(spooky-1) + derangement(spooky-2)); 
        %and there are this many ghosts! 
    end
    
%Function to determine the number of derangements possible, given a number 
%representing the amount of elements in a sequence. If the input number is
%zero or negative, you will be told that you inputed an erroneous number.
%Otherwise, the function should work well. 
%Usage: function [ ghost ] = derangement( spooky )


end

