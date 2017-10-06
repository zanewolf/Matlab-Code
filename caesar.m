% Function Name: caesar
% Inputs  (2): - (char) a string of unknown length
%              - (double) an integer describing the shift
% Outputs (1): - (char) a coded string using the Caesar cipher
%
% Caeser Cipher Information:
% 	The Caesar cipher is named after Julius Caesar, who, according to 
% 	Suetonius, used it with a shift of three to protect messages of 
% 	military significance. It is unknown how effective the Caesar cipher
% 	was at the time, but it is likely to have been reasonably secure, not
% 	least because most of Caesar's enemies would have been illiterate and
% 	others would have assumed that the messages were written in an unknown 
%   foreign language.
% 
%   Caesar ciphers can be found today in children's toys such as secret
%   decoder rings. A Caesar shift of thirteen is also performed in the
%   ROT13 algorithm, a simple method of obfuscating text widely found on
%   Usenet and used to obscure text (such as joke punchlines and story
%   spoilers), but not used as a method of encryption.
%
%	In the Caesar cipher, each letter is shifted by the specified amount.
%	For example, if the shift is 3, then the letter 'a' would be coded as
%	the letter 'd'. 
%
% Function Description:
%	The function takes in a string and then uses the Caesar cipher to 
%	encode it. Only letters (both upper case and lower case) should be
%	encoded using the Caesar cipher. Any other characters such as spaces,
%	periods, etc. should not be encoded.
%
% Notes:
%   - The Caesar cipher should work for both positive and negative integers
%     that indicate the shift as given by the second input.
%   - There is no limit to the value of the shift number in the second 
%     input.
% 
% Hints:
%   - The mod() function and its effect on both positive and
%     negative divisibilities may useful. 
function [ huh ] = caesar( phrase, n)
a = double(phrase)
newn = mod(n,26)
a(a>=65 & a<=91) = a(a>=65 & a<=91) + newn
a(a>=97 & a<=123)= a(a>=97 & a<=123)+ newn
a(a>=91 & a<=96) = a(a>=91 & a<=96)-26
a(a>123) = a(a>123) -26
huh = char(a)
%Function to create/uncode a Caesar cypher. It leaves characters and spaces
% %unchanged.
% Usage [ huh ] = caesar( phrase, n)
% a = double(phrase)
% newn = mod(n,26)
% a(a>=65 & a<=91) = a(a>=65 & a<=91) + newn
% a(a>=97 & a<=123)= a(a>=97 & a<=123)+ newn
% a(a>=91 & a<=96) = a(a>=91 & a<=96)-26
% a(a>123) = a(a>123) -26
% huh = char(a)
end

