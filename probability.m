% Function Name: probability
% Inputs  (4): - (double) the number of red apples in a bag
%              - (double) the number of green apples in a bag
%              - (double) the percentage of red apples that are rotten
%              - (double) the percentage of green apples that are rotten
% Outputs (2): - (double) the probability of pulling a non-rotten red apple
%              - (double) the probability of pulling a non-rotten green
%                         apple
%
% Function Description:
%   Write a function called "probability" that takes in four parameters:
%   the number of red apples in a bag, the number of green apples in a bag,
%   the *PERCENTAGE* (e.g. a 25% chance will be entered as the number 25,
%   *NOT* the decimal 0.25) of red apples that are rotten, and the
%   *PERCENTAGE* of green apples that are rotten. The function should then
%   calculate the probability of pulling a non-rotten red apple or a
%   non-rotten green apple from the bag and then output these values as
%   *PERCENTAGES*.
%
% Notes:
%   - You will only be pulling *ONE* apple from the bag, but you will need
%     to calculate the probability of both cases.
%   - The number of rotten apples is guaranteed to be a whole number.
function [nonrottenred, nonrottengreen] = probability (red, green, prctrottenred, prctrottengreen)
nmbrrottenred = (.01 .* prctrottenred) .* red;
nmbrrottengreen = (.01 .* prctrottengreen) .* green;
goodred = red - nmbrrottenred;
goodgreen = green - nmbrrottengreen;
nonrottenred = 100 .* (goodred ./ (red + green));
nonrottengreen = 100 .* (goodgreen ./ (red + green));
% function to determine the probability of pulling either a good green
% apple or a good red apple from a bag containing both good and rotten red
% apples and good and rotten green apples. 
% usage: nmbrrottenred = (.01 .* prctrottenred) .* red;
% nmbrrottengreen = (.01 .* prctrottengreen) .* green;
% goodred = red - nmbrrottenred;
% goodgreen = green - nmbrrottengreen;
% nonrottenred = 100 .* (goodred ./ (red + green));
% nonrottengreen = 100 .* (goodgreen ./ (red + green));
end

