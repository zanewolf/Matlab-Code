% Function Name: paintRoom
% Inputs  (5): - (double) one dimension of a rectangular room (in feet)
%              - (double) a second dimension of the room (in feet)
%              - (double) the third dimension of the room (in feet)
%              - (double) the total area (in square feet) of any windows in
%                         the room
%              - (double) the number of coats of paint needed
% Outputs (2): - (double) the number of 5-gallon paint cans needed 
%              - (double) the number of 1-gallon paint cans needed
%
% Function Description:
%   Write a function named "paintRoom" that takes in three dimensions of a
%   rectangular room, the area of the windows in the room, and the number
%   of coats needed to paint the room. The function should calculate the 
%   number of 5-gallon cans of paint and the number of 1-gallon cans of 
%   paint needed to to paint the room (excluding the floor and windows), 
%   assuming one gallon of paint covers 350 square feet. In order to 
%   minimize cost, you should use as many 5-gallon cans as possible without
%   exceeding the total number of gallons needed. Then use 1-gallon cans 
%   for any remaining paint required. If a fraction of a one-gallon can is
%   needed, this number should be rounded up to account for the whole 
%   additional can that must be purchased (i.e. the number of 1-gallon cans
%   must always be an integer).
%
%   Notes:
%   -  The dimensions of the floor will always be the first two inputs.
%   -  The room is not guaranteed to have any windows.
%   -  The number of coats is guaranteed to be a positive integer.
%
%   Hints:
%   -  You may find the ceil(), floor(), and mod() functions helpful.
function [nmbr5gal, nmbr1gal] = paintRoom (oneDim, twoDim, threeDim, wndwArea, coats)
surfaceArea = (oneDim .* twoDim) + 2 .* (oneDim .* threeDim) + 2 .* (twoDim .* threeDim);
areaPainted = coats .* (surfaceArea - wndwArea);
numbergals = areaPainted ./ 350;
nmbr5gal = floor(numbergals ./ 5);
nmbr1gal = ceil(numbergals - 5 .* nmbr5gal);
% function to calculate the number of 5-gallon buckets of paint and the
% number of 1-gallon buckets of paint based on the square-footage of the
% room (minus window area and floor area), the number of coats needed, and
% the need to be minimize the amount of paint buckets needed. 
% usage: surfaceArea = (oneDim .* twoDim) + 2 .* (oneDim .* threeDim) + 2 .* (twoDim .* threeDim);
% areaPainted = coats .* (surfaceArea - wndwArea);
% numbergals = areaPainted ./ 350;
% nmbr5gal = floor(numbergals ./ 5);
% nmbr1gal = ceil(numbergals - 5 .* nmbr5gal);
end

