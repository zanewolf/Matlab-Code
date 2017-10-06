% Function Name: mixUp
% Inputs  (3): - (char) A string of length n
%              - (char) A string of length n
%              - (double) A double that represents the index at which to
%                         start the mixing
% Outputs (1): - (char) A mixed up string of length 2n
% 
% Function Description:
%   Write a function called "mixUp" that takes in two strings of equal 
%   length and a double, then intertwines them based off the following 
%   steps:
%
%   1. The first string gets spaced out until it is of length 2.*n by
%      placing a space after each letter. 
%      For example, 'hello' becomes 'h_e_l_l_o_'. (The underscores will be
%      refered to as spaces.)
%
%   2. The second string will be placed into each of the new spaces. 
%
%   3. The third input tells you where to start placing the second sting.
%      For example, if the second string is 'world' and the third input is
%      3, that means you have to start placing the string 'world' into the
%      spaces starting at the third space (between the two L's) and wrap
%      around. The resulting string would be 'hledlwloor'
%
%   4. Return the resulting string.
%   
% Notes:
%   - The two strings will be of equal length.
%   - The third input will always be between 1 and the length of the
%     string, inclusive.
%
% Hints:
%   - You may find the creating a temporary placeholder string helpful.
%   - The char() function may be useful.
function [ wowcrazy ] = mixUp(str1, str2, n)
b = 1:(2*length(str1));
a = double(str1);
j = double(str2);
b(1:2:end)=a;
e = (1:length(j)-n+1);
c = ((length(j)-n+2):length(j));
both = [c e];
newVec = j(both);
b(2:2:end) = newVec;
wowcrazy = char(b);
%Function to interlace two strings of equal length starting at some position between two
%elements in the first string. For example, 'mountain', 'climbing', and 3
%become 'mnogucnlnitmaibni', with the second string starting after the
%third spot in the first word. 
% %Usage: [ wowcrazy ] = mixUp(str1, str2, n)
% b = 1:(2*length(str1));
% a = double(str1);
% j = double(str2);
% b(1:2:end)=a;
% e = (1:length(j)-n+1;
% c = ((length(j)-n+2):length(j));
% both = [c e];
% newVec = j(both);
% b(2:2:end) = newVec;
% wowcrazy = char(b);
end

