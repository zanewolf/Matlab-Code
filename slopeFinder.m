% Function Name: slopeFinder
% Inputs  (2): - (double) a row vector denoting a set of x-coordinates
%              - (double) a row vector denoting a set of y-coordinates
% Outputs (1): - (double) a row vector of the slopes between each
%                         coordinate if they were linearly interpolated
function [slopesvec] = slopeFinder (xcoords, ycoords)
y_a=ycoords(1:end-1); %since y_a is the second value, the
%only number that can never be in y_a is the last number. Thus, all the numbers 
%that can take up the number subtracted cann become their own vector. 
y_b=ycoords(2:end); %since y_b is the first value, the only number that can 
%never be in y_b is the first number. Thus, all the numbers that can be the
%first value can become their own vector.
changey = y_b-y_a; %subtracts the second balue from the first value to 
%determine the change in y values
x_a = xcoords(1:end-1); %same process as used for y values
x_b = xcoords(2:end);
changex = x_b-x_a;
slopesvec = changey ./ changex; %uses slope formula(deltay/deltax) to determine the slope
end 

%
% Function Description:
%   Write a function called "slopeFinder" that takes in a vector of
%   x-coordinates and another vector of corresponding y-coordinates. The
%   function should then find the slope between each adjacent coordinate
%   pair assuming the two coordinates are connected by a straight line. For
%   example, if x-coordinate values are x = [1 2 3 4 5] and y-coordinate
%   values are y = [1 1 2 3 8], then find the first index of the output by
%   applying the slope formula ("rise over run") to the first two indices
%   of the x and y vectors to find that m = (1 - 1)/(2 - 1) = 0. To find
%   the second index of the output, apply the slope formula to the second
%   and third index of the x and y vector, so m2 = (2 - 1)/(3 - 2) = 1.
%   Proceed to find any and all remaining slopes until you get to the last
%   pair in the input row vectors.
%
% Notes:
%   - There will always be at least two numbers in both input row vectors.
%   - You may assume that the two input vectors have the same length.
%   - You may also assume that no two consecutive indices of the x-vector
%     are the same number, i.e. do not worry about infinite slopes.
%   - You may *NOT* use the diff() function.
%   - You may *NOT* use iteration.
%
% Hint:
%   - If done correctly, the output vector should be one element shorter
%     than the input vectors.

