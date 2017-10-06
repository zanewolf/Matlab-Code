function [ whichseat ] = friday( frontseats, backseats )
if frontseats > 0 %considers a situation in which there is a space open in
    %in the front seat
    whichseat = 'Kickin'' in the front seat.';
elseif backseats > 0 %if front is 0 or less than 0, accounted for by the lack
    %of a second frontseat case, the conditional considers a situation in
    %which there is a space open in the back seat
    whichseat = 'Sittin'' in the back seat.';
else %considers a situation in which the car is full and Rebecca really needs
    %to reconsider catching a ride with her friends. 
    whichseat= 'Which seat can I take?';
end
% Function to take into account the number of front seats 
%available and the number of backseats available and to output the most
%likely seat for rebecca to sit in.
%Usage: function [ whichseat ] = friday( frontseats, backseats )
% if frontseats > 0
%     whichseat = 'Kickin'' in the front seat.'
% elseif backseats > 0
%     whichseat = 'Sittin'' in the back seat.'
% else
%     whichseat= 'Which seat can I take?'
% end

end
