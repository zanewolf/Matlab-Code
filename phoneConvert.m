%Function Name: phoneConvert
% Inputs  (1): - (char) A string representing a phone number that contains
%						letters 
% Outputs (1): - (char) The same telephone number with all letters
%						converted to their corresponding numbers (as found
%						on a telephone)
% 
% Function Description:
%   If you have seen phone numbers that contain letters instead of numbers,
%	you may have thought "I wish I could know the numbers that correspond
%	to those letters so I can dial the number!" With the help of MATLAB,
%	now you can! Write a function called "phoneConvert" that takes in a
%	string containing a phone number and returns a string that contains the
%	same telephone number in a different format. The instructions and
%	formatting for the inputs and outputs can be found below:
%
%   INPUT FORMAT:
%     - The input will start with an "area code" in the format "###-" or
%       "1-###-" (where the # character is used here to denote any number
%       between 0 and 9, inclusive)
%     - The remainder of the input string will contain AT LEAST 7 UPPERCASE
%       LETTERS
%     - An example of an input is '1-800-BUYATREE'
%
%   INSTRUCTIONS:
%     - Convert all letters to their respective numbers (as found on a
%       telephone keypad)
%     - Retain only the first 7 numbers which will later be inserted after
%       the area code
%     - Place a hyphen between the 3rd and 4th number (of the 7 given in
%       the previous instruction)
%     - Replace all letters in the phone number with these new numbers
%
%   OUTPUT FORMAT:
%     - The output string should look like either '1-###-###-####' or
%       '###-###-####' (where the # character is used here to denote any
%       number between 0 and 9, inclusive)
%     - For a listing of which letters correspond to which numbers, you
%       should consult the following website or the nearest telephone 
%       keypad:
%
% http://upload.wikimedia.org/wikipedia/commons/4/43/Telephone-keypad.svg
%
% Hints:
% 	- You may find the strtok() or strfind() functions useful in solving
%	  this problem.
function [ yay ] = phoneConvert( gah )
a = strfind(gah, '-')
b = gah(1:a(end))
d = gah(a(end)+1:end)
d = double(d)
d(d<65)= 1
d(d>=91) = 0
d(d>=65 &d<=67) = 2
d(d>=68 & d<=70) = 3
d(d>= 71 & d<= 73) = 4
d(d>=74 & d<=76)= 5
d(d>=77 & d<=79) = 6
d(d>=80 & d<=83) = 7
d(d>=84 & d<=86) = 8
d(d>=87 & d<=90) = 9
d(d==1) = []
d(:, 8:end) = []
e = num2str(d)
e(e==' ')=[]
f = [000000]
f(1:3)=e(1:3)
f(5:8)=e(4:7)
f(4)= '-'
yay = [b, f]



%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


end

