% PROBLEM 1.  A Good Ol' Fashioned Game of Hide and Seek
%--------------------------------------------------------------------------
%
% Function Name: myFind
% Inputs  (2): - (double) A 1xN vector of numbers
%              - (double) A number to search for
% Outputs (2): - (double) A vector of indices displaying the locations of
%						  the number that was searched for in the input
%						  vector
%              - (double) A vector of all the numbers that did not match
%						  the given number
% 
% Function Description:
%   Write a function called "myFind" that takes in a vector and a number
%   and then returns a vector containing all the indices where the number
%   occurs in the vector. If none of the numbers match the second input,
%   then the function returns empty vector ([]). The function also returns
%   a list of the numbers that did not match the second input. If all the
%   numbers match the second input, then the second output should be an
%   empty vector.
%
% Constraints:
%   - You may NOT use the find() function for this problem. 

function [yay, aww] = myFind(vector, targetnumber)
b = vector == targetnumber; %use == to index logically which locations are
%equal to the targetnumber
c = 1:length(vector); %create a vector same length as the original vector
yay = c(b); %overlay the secondary vector and the indexed vector
d = vector~=targetnumber; %use ~= to index loigcally all those locations in 
%the original vector that are not equal to the targetnumber
aww = vector(d);

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


end

