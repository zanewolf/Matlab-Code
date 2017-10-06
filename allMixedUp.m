% Function Name: allMixedUp
% Inputs  (2): - (double) A 1xN vector of numbers
%              - (double) A 1xN vector of numbers
% Outputs (1): - (double) A vector of the two vectors mixed together
% 
% Function Description:
%   Write a function called "allMixedUp" that takes in two vectors and then
%   returns one vector where all of the elements at odd indicies contain
%   the values from the first vector and all the elements at even indices
%   contain the values from the second vector. If one vector is longer than
%   the other,the remaining indices should be filled with zeros.  
%
% Hints:
%   - The length of the final vector should be twice the length of the
%     longest vector.
%   - You may find the max() and zeros() function useful. 

function [vecsum] = allMixedUp (vec1, vec2)
x = length(vec1); %determines length of vec1
y = length(vec2); %determines length of vec2
l = max(x, y); %determines with length is longer
vector = zeros(1,2.*l); %creates a vector of zeroes with length l, corresponding to the length of the longer vector
odds = 1:2:length(vector); %find odd positions with the vector
evens = 2:2:length(vector); %finds even positions within the vector
odds = odds(1:length(vec1)); %sets up the number of odds to match the number of numbers in vec1
evens = evens(1:length(vec2)); %sets up the number of evens to match the number of numbers in vec2
vector(odds) = vec1; %fills the odd positions of vector with the values of vec1
vector(evens) = vec2; %fills the even positions of vector with the values of vec2
vecsum = vector; %renames the vector to match the ouput. 
end