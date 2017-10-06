% Function Name: arrayUnfold
% Inputs  (1): - (double) An array
% Outputs (1): - (double) The same array unfolded
%
% Function Description:
%	Write a function called "arrayUnfold" that takes in a numerical array
%	and "unfolds" it in the following way:
%
%     1. The array should first be unfolded to the right, meaning that
%        the unfolded array should be a mirror image of the original from
%        left to right.
%     2. The unfolded array generated from step 1 that is now directly to
%        the right of the original array should be unfolded directly
%        downwards and should be a mirror image of the recently
%        generated array from step 1 from top to bottom.
%     3. The unfolded array generated from step 2 that is now directly
%        below the array from step 2 should be unfolded one last time
%        directly to the left and should be a mirror image of the
%        unfolded array generated from step 2 from right to left.
%
%   In order to facilitate understanding of the unfolding criteria, a 
%   pictoral description is provided below:
%
%    ------       -------------       -------------       -------------
%   |   >  |     |   >  |  <   |     |   >  |  <   |     |   >  |  <   |
%   |  <   | --> |  <   |   >  | --> |  <   |   >  | --> |  <   |   >  |
%   |   o  |     |   o  |  o   |     |   o  |  o   |     |   o  |  o   |
%    ------       -------------       -------------|     |-------------|
%                                           |  o   |     |   o  |  o   |
%                                           |   >  |     |  <   |   >  |
%                                  	        |  <   |     |   >  |  <   |
%                                     	     ------       -------------
%
% Constraints:
%	- You may *NOT* use the cat(), horzcat(), vertcat(), flipdim(),
%	  fliplr(), flipud(), or rot90() functions in your solution.
%
% Hints:
%   - This problem can be greatly simplified by noticing the relationship
%     between the second and fourth images in the pictorial
%     representation above.
function [ pretty ] = arrayUnfold( boring)
a = boring(:, end:-1:1);
b = boring(end:-1:1, :);
c = boring(end:-1:1, end:-1:1);
pretty = [boring a; b c];
%Funtion to take a given array and output an array containing several
%mirror images of the given array: a reflection about an axis on the right,
%a reflection about an axis on the bottom, and a reflection about both of
% %the above axes. 
% %   [ pretty ] = arrayUnfold( boring)
% a = boring(:, end:-1:1);
% b = boring(end:-1:1, :);
% c = boring(end:-1:1, end:-1:1);
% pretty = [boring a; b c];
end

