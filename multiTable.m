
function [cheater ] = multiTable( num )
array = zeros(num, num); %creates a dummy array of the indicated NxN size
x=0; %sets an inital variable value
while x <=num %sets the condition that x should not exceed the indicated number length
    array(1+x,1) = x; %begins filling in the first column of the array with values from 0 to num
    array(1,1+x) = x; %begins filling in the first row of the array with values from 0 to num
    x=x+1; %moves x toward the condition set, so that the loop will eventually terminate. 
end
[r c] = size(array); %determines the size of the array
for row = 2:r %because the first row and first column correspond to "zero" 
    %and we don't want that value to change, we'll start indexing at 2 and
    %continue until the end
    for col= 2:c
        array(row, col) = array(row, 1)*array(col,1); %the value inputed will be the row's beginning value
        %(e.g., row 3 in a (3x3) matrix begins with 2, and the same for the
        %column) times the column's beginning value. 
    end
end
cheater = array;
%Function to compile a multiplication table of size NxN, where N equals a
%number that the user inputs as his/her max value. 
%Usage: function [cheater ] = multiTable( num )
% array = zeros(num, num); %creates a dummy array of the indicated NxN size
% x=0; %sets an inital variable value
% while x <=num %sets the condition that x should not exceed the indicated number length
%     array(1+x,1) = x; %begins filling in the first column of the array with values from 0 to num
%     array(1,1+x) = x; %begins filling in the first row of the array with values from 0 to num
%     x=x+1; %moves x toward the condition set, so that the loop will eventually terminate. 
% end
% [r c] = size(array); %determines the size of the array
% for row = 2:r %because the first row and first column correspond to "zero" 
%     %and we don't want that value to change, we'll start indexing at 2 and
%     %continue until the end
%     for col= 2:c
%         array(row, col) = array(row, 1)*array(col,1); %the value inputed will be the row's beginning value
%         %(e.g., row 3 in a (3x3) matrix begins with 2, and the same for the
%         %column) times the column's beginning value. 
%     end
% end
% cheater = array;
end
