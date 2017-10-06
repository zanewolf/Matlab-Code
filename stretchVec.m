% Function Name: stretchVec
% Inputs  (2): - (double) a vector
%              - (double) a scalar value by which the vector should be
%						  stretched or compressed
% Outputs (1): - (double) the new vector
%
% Function Description:
%   Write a function called "stretchVec" that takes in a vector with at
%	least one element and a value by which the vector should be stretched
%	or compressed and outputs the new vector. If the stretch value is
%	greater than 1, then the vector should be stretched by adding duplicate
%	elements. If the value is less than 1, then the vector should be
%	compressed by removing elements. If the value is *EXACTLY* 1, then no
%	change should be made to the vector. For example, if:
%
%		vec = [0 1 1 2 3 5 8 13]
%		scalingFactor = 2
%
%	then the resulting vector would be stretched by a factor of two by
%	adding duplicate elements, i.e.
%
%		newVec => [0 0 1 1 1 1 2 2 3 3 4 4 8 8 13 13]
%
%	but if scalingFactor = 1/2, then it would be compressed by a factor
%	of 2 by removing elements, i.e.
%
%		newVec => [0 1 5 13]
%
% Notes:
%   - The input vector is guaranteed to contain at least one element.
%	- You should use the round() function to determine the number of
%	  elements in the final vector.
%
% Hints:
%	- You may find the linspace() and round() functions in conjunction
%	  with numerical indexing useful in solving this problem.

function [tada] = stretchVec(vector, changer)
b = round(linspace(1,length(vector), round(length(vector).*changer))); 
%creates a vector with a start value of one, an end value equal to the 
%length of the first vector, and with as many numbers per value to get there 
%as dictated by the number specificied. The first round function around the
%(length(vector) .* changer) will create steps of whole numbers. The second
%round function will round all the numbers created in the function to whole
%numbers. I.e., [1 1.33 1.66 2 2.33 2.66 3] wil become [ 1 1 2 2 2 3 3] and
%so on. 
tada = vector(b); %this indexes the positions of the new vector with the 
%values of a. 


%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


end

