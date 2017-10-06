%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : R. Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : HW04
% Course       : CS 1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:
%   - hw04.m
%   - ABCs_arrays.m
%   - ABCs_strings.m
%   - ABCs_etest.m
%   - ABCs_pretest_hw04.p
%   - CS1371 ETestTutorial.pdf
%
% Files to Submit:
%   - hw04.m
%   - ABCs_arrays.m
%   - ABCs_strings.m
%   - ABCs_etest.m
%   - calcGrades.m
%   - arrayUnfold.m
%   - arrayReplace.m
%   - parseCommand.m
%   - phoneConvert.m
%   - mixUp.m
%   - caesar.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name variables exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%		d) input  
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is a m-file called ABCs_vectors.m. Open this file
% in MATLAB and complete it according to the directions contained within.
%
% Files to Complete: 
%       - ABCs_arrays.m
%       - ABCs_strings.m
%		- ABCs_etest.m
% ABCs File Testing:
%       - Run ABCs_pretest_hw04.p: ABCs_pretest_hw04()
%
%==========================================================================
% PART 2.  Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topics:
%       - Arrays
%       - Strings
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will receive
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers). Any scripts turned in will be given a 0 automatically. 
%
%==========================================================================
% Homework Video of the Week
%--------------------------------------------------------------------------
% 
% http://www.youtube.com/watch?v=-L6UWk6-Hg8
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PROBLEM 1 - Calculating Grades
%--------------------------------------------------------------------------
% Function Name: calcGrades
% Inputs  (2): - (double) An array of homework grades
%              - (double) A vector of gtIDs
% Outputs (2): - (double) The original array with the student averages and
%                         class averages appended
%              - (double) The gtID of the student with the highest average
%
% Function Description:
%   Write a function called "calcGrades" that takes in an array of grades
%   formatted the following way:
%   
%   [TEST 1	 TEST 2	 TEST 3	 FINAL
%    ##       ##      ##      ##
%    ...      ...     ...     ...]
%
%   Each row corresponds to a student and each column corresponds to a
%   different category item. The second input is a column vector of gtID
%   that corresponds to the rows of the array. The function should then
%   remove all students who made a zero on the final exam, then calculate
%   the student averages and append that as a column, and then calculate
%   the overall averages for each category, including student averages, and
%   append it as a row vector. Finally, the function should return the gtID
%   of the student with the highest average. 
%
% Hints: 
%   - The mean(), sum(), and max() functions may be useful. 
%   - Be careful of the dimensions of your vectors and arrays. Remember, to
%     add vectors or arrays, they must both have the same dimensions.
%
% Test Cases:
%   grades = [72    85    93    97
%             60    58    50     0
%             100   100   100   100
%             98    71    80    83];
%
%   gtIDs = [902123456
%           902627086
%           901876111
%           901867530];
%
%   [new_grades top_student] = calcGrades(grades,gtIDs);
%       new_grades => [72.0000   85.0000   93.0000   97.0000   86.7500
%                      100.0000  100.0000  100.0000  100.0000  100.0000
%                      98.0000   71.0000   80.0000   83.0000   83.0000
%                      90.0000   85.3333   91.0000   93.3333   89.9167]
%       top_student => 901876111
%
%   grades = [100 87 32 76
%             56 78 94 88
%             98 87 92 91
%             78 67 87 72]
%
%   gtIDs = [902336784
%            902781247 
%            902448329
%            902564321];
%
%   [new_grades top_student] = calcGrades(grades,gtIDs);
%        new_grades => [100.0000   87.0000   32.0000   76.0000   73.7500
%                       56.0000   78.0000   94.0000   88.0000   79.0000
%                       98.0000   87.0000   92.0000   91.0000   92.0000
%                       78.0000   67.0000   87.0000   72.0000   76.0000
%                       83.0000   79.7500   76.2500   81.7500   80.1875]
%         top_student => 902448329
%
%==========================================================================
% PROBLEM 2 - Origami
%--------------------------------------------------------------------------
%
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
%
% Test Cases:
%   test1 = arrayUnfold([1 0; 0 1]);
%       test1 => [1 0 0 1
%                 0 1 1 0
%                 0 1 1 0
%                 1 0 0 1]
%
%   test2 = arrayUnfold([1 2 3]);
%       test2 => [1 2 3 3 2 1
%                 1 2 3 3 2 1]
%
%   test3 = arrayUnfold([]);
%       test3 => []
%
%==========================================================================
% PROBLEM 3 - Behind the Mask
%--------------------------------------------------------------------------
% 
% Function Name: arrayReplace
% Inputs  (3): - (double) A MxN array 
%              - (double) A MxN array
%              - (double) A number  
% Outputs (1): - (double) The original array with the replacements made
%
% Function Description:
%   Write a function called "arrayReplace" that takes two arrays and a
%   number and replaces all instances of that number in the first array
%   with the corresponding positions of the second array. If the number
%   does not exist in the array, it should just return the original array
%   with no changes. 
%
% Notes:
%   - You can assume the arrays will always be the same size. 
%
% Hints: 
%   - When you use logical indexing with an array, it returns an array of
%     logicals. This is called a "mask". See how you can use this to solve
%     the problem. 
%
% Test Cases:
%   arr1 = [7     7     7     7
%           7     4     4     7
%           7     4     4     7
%           7     7     7     7];
%
%   arr2 = [8     8     8     8
%           8     1     2     8
%           8     3     4     8
%           8     8     8     8];
%
%   out1 = arrayReplace(arr1, arr2, 4);
%       out1 => [7     7     7     7
%                7     1     2     7
%                7     3     4     7
%                7     7     7     7]
%
%   out2 = arrayReplace(arr1, arr2, 7);
%       out2 => [8     8     8     8
%                8     4     4     8
%                8     4     4     8
%                8     8     8     8]
%
%   out3 = arrayReplace(arr1, arr2, 6);
%       out3 => [ 7     7     7     7
%                 7     4     4     7
%                 7     4     4     7
%                 7     7     7     7]
%
%==========================================================================
% PROBLEM 4 - Smooth Operator
%--------------------------------------------------------------------------
% 
% Function Name: parseCommand
% Inputs  (1): - (char) A string representing a simple math operation 
%                       command 
% Outputs (3): - (double) The numerical value of the first operand 
%              - (double) The numerical value of the second operand
%              - (char)  A string representing the operator
%
% Function Description:
%   Write a function called "parseCommand" that takes in a string
%   representing a simple math operation on two operands and returns the
%   three main parts of the command: the the first operand, the second
%   operand, and the operator. The operand values must be returned in
%   their numeric form (type double). The operator must be returned as a
%   string (type char), and all leading and/or trailing white space must be
%   removed. The function must work for any operator.
%
% Notes:
%   - Input strings will contain two operands with an operator in 
%     between.
%	- The operator does not necessarily have to be a valid MATLAB operator.
%   - There may be any number of spaces between the operands and
%     operator, though you can always assume there will be at least one
%     space between the first operand and the operator and between the
%     operator and the second operand.
%   - The operands may be negative; if so, you may assume there will be
%     no spaces between the negative sign and the number. (e.g. '-2 + -53')
%
% Hints: 
%   - You may find the strtok() and str2num() functions useful.
%
% Test Cases:
%   [operand1 operand2 operator] = parseCommand('25 .* 200');
%   	operand1 => 25
%   	operand2 => 200
%   	operator => '.*'
%
%   [operand1 operand2 operator] = parseCommand('10 .^ -3');
%   	operand1 => 10
%   	operand2 => -3
%   	operator => '.^'
%
%   [operand1 operand2 operator] = parseCommand(' 7   +     27 ');
%   	operand1 => 7
%   	operand2 => 27
%   	operator => '+'
%
%   [operand1 operand2 operator] = parseCommand('9  **  5');
%   	operand1 => 9
%   	operand2 => 5
%   	operator => '**'
%
%   [operand1 operand2 operator] = parseCommand('12  x  7');
%   	operand1 => 12
%   	operand2 => 7
%   	operator => 'x'
%
%==========================================================================
% PROBLEM 5 - Hello, You Have Reached 1-800-BUYATREE
%--------------------------------------------------------------------------
%
% Function Name: phoneConvert
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
%
% Test Cases:
%   pn1 = phoneConvert('1-800-BUYATREE');
%       pn1 => '1-800-289-2873'
%
%   pn2 = phoneConvert('229-EVERYDAYIMSHUFFLIN');
%       pn2 => '229-383-7932'
%
%	pn3 = phoneConvert('1-900-YOURHAT');
%       pn3 => '1-900-968-7428'
%
%==========================================================================
% PROBLEM 6 - All Mixed Up Again!
%--------------------------------------------------------------------------
%
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
%
% Test Cases:
%   mixed1 = mixUp('hello','WORLD', 3);
%       mixed1 => 'hLeDlWlOoR'
%
%   mixed2 = mixUp('!!!!', '1371', 4);
%       mixed2 => '!3!7!1!1'
%
%   mixed3 = mixUp('yellow' , 'jacket', 1);
%       mixed3 => 'yjealclkoewt'
%
%==========================================================================
% PROBLEM 7 - Cryptography
%--------------------------------------------------------------------------
%
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
%
% Test Cases:
%	coded1 = caesar('Are we there yet?', 3);
%       coded1 => 'Duh zh wkhuh bhw?'
%
%   coded2 = caesar('Duh zh wkhuh bhw?', -3);
%       coded2 => 'Are we there yet?'
%
%   coded3 = caesar('Actually, I don't know what this does!', -26);
%       coded3 => 'Actually, I don't know what this does!'
%
%   coded4 = caesar('Hello World.',79);
%       coded4 => 'Ifmmp Xpsme.'
%
%==========================================================================
% FINISHED!
%--------------------------------------------------------------------------
% 
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
