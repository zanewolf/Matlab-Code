% Function Name: barrelShift
% Inputs  (2): - (double) a row or column vector
%              - (double) the number of times to shift the vector
% Outputs (1): - (double) the shifted row or column vector
%
% Function Description:
%   Write a function called "barrelShift" that takes in a vector and the 
%   number of times the vector is shifted. The function will output the 
%   vector shifted by the number of times indicated by the second input.
%
%   Here is an example of barrel shifting:
%	If you have a vector [1 2 3 4 5], it will look like this after you
%	barrel shift it:
%
%   1 time:  [5 1 2 3 4]
%   2 times: [4 5 1 2 3]
%   3 times: [3 4 5 1 2]
%   4 times: [2 3 4 5 1]
%   5 times: [1 2 3 4 5]
% 
%   Basically, every time you do one barrel shift, the vector is shifted to
%   the right and the number at the end is moved to the front. This process
%   is repeated for the number of shifts specified. If the number of shifts
%   is negative, then the vector should be barrel shifted to the left
%   instead of the right. 
%
% Notes:
%   - Both row and column vectors can be inputs to this function.
%   - If the number of shifts is zero, then the function should return 
%     the original vector. 
%
% Hints: 
%   - If you try to index out of a vector's length or index with a
%     negative number, it will produce an error.
%   - You may find the mod() function useful. 
function [ newVec ] = barrelShift( a, shift )
shiftA = mod(shift, length(a)); %this divides the shift by the length of a,
%which should result in a remainder equal to the same shift as before. For
%example, if the shift is of length 5 and the vector is four elements long,
%the shift of length five is just like shifting the vector once. 
b = (1:length(a)-shiftA); %this breaks the vector into the first element 
%to the number of elements not shifted
c = ((length(a)-shiftA)+1:length(a)); %this is the second vector, from the actual 
%first element shifted to the end of the original vector
both = [c b];
newVec = a(both);%this concatenates the second vector (the elements shifted 
%to the front) and the first vector (the first elements pushed to the back)
end

