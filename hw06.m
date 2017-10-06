%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : R. Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw06
% Course       : CS1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                
% Files provided with this homework:  
%   - hw06.m
%   - ABCs_iteration.m
%   - ABCs_pretest_hw06.p
%
% Files to submit:
%   - hw06.m
%   - ABCs_iteration.m
%   - multiTable.m
%   - mySpaces.m
%   - pigLatin.m
%   - boxedIn.m
%   - bingoChecker.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% COMMENTING
%--------------------------------------------------------------------------
%
% Whenever you program, it is always a good idea to comment your code.
% Commenting helps you keep track of what you are attempting to code, and 
% it helps others in understanding why you wrote various lines of code.  
% Since the AutoGrader does not give partial credit for attempting a 
% problem, we have added a commenting system to give some incentive to at 
% least attempt each problem. From now on, when you write a solution to a
% problem, you should comment your code and explain what you were 
% attempting to code. Some good places to comment would be sections of your
% code that directly relate with your algorithm. However, don't comment
% every line of code. Instead comment the lines of code that are either  
% difficult to understand or are important to solving the problem. 
%
% Commenting will purely be for extra-credit purposes, so if you don't want
% to comment your code, you don't have to. Your Section TA will grade the
% comments from each Homework and will keep track of your commenting points
% throughout the semester. Commenting points will not change the score you
% receive on a homework assignment, but they will be factored into your
% homework average at the end of the semester. 
%
% Finally, if you come to help desk, you are expected to have your code
% commented. If a TA sees that your code is not commented, he or she will
% move on to another student until you comment your code.
%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is in an m-file starting with ABCs_.  Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% Once you are done, you can test your ABC file by running the pretest at
% the command prompt, like so:
%
%  >> ABCs_pretest_hw06()
%
% Alternatively, you can right button click the file in the Current Folder
% window and click "Run".  You cannot open the file by double clicking it.
% If you have problems running the pretest, then you probably need a newer
% version of MATLAB.  Newer versions of MATLAB are available free to you.
% Please read David Smith's announcement "Matlab 'Free' Access" for further
% information.  Be sure the pretest and your ABC file are in the same
% directory.
%
% The pretest is simply an aide to help you test your code.  While we
% strive to supply a quality pretest file for you to use, a sucessful
% result with a pretest file does not ensure awarded points on the
% homework.  The pretest is merely a guide to help you complete the ABCs.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Homework Video of the Week:
%
% http://www.youtube.com/watch?v=3aI6EAsKvgg
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   4.5 Iteration
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% PROBLEM 1.  UGA Math
%--------------------------------------------------------------------------
%
% Function Name: multiTable
% Inputs  (1): - (double) A number 
% Outputs (1): - (double) Multiplication tables up to that number
%
% Function Description: 
%	Reports have been coming in from u[sic]ga that they have been having
% 	issues with their math homework. They are willing to pay a significant
% 	amount of money to have access to different multiplication tables.
%	Being a savvy entrepreneur, you decide to provide these multiplication
%	tables.
%
% 	Write a function called "multiTable" that takes in a number and produces
% 	an array that represents the multiplication table for that number. A
% 	multiplication table is a NxN array where the first row and column of the
% 	array are the numbers from 0 to N inclusive. The rest of the table is
%	comprised of the products between that row number and that column number.
%	For example, if the number is 4, the multiplication table would look like
%	this:
%
%                           [0, 1, 2, 3, 4
%                            1, 1, 2, 3, 4
%                            2, 2, 4, 6, 8
%                            3, 3, 6, 9, 12
%                            4, 4, 8, 12, 16] 
% Notes:
% 	- The input is guaranteed to be an integer greater than 0. uga math hasn't
%     dealt with negative numbers yet. 
%
% Test Cases:
%	table1 = multiTable(5);
%		table1 => 
%		  [0, 1, 2, 3, 4, 5
% 		   1, 1, 2, 3, 4, 5
% 		   2, 2, 4, 6, 8, 10
% 		   3, 3, 6, 9, 12, 15
% 		   4, 4, 8, 12, 16, 20
%		   5, 5, 10, 15, 20, 25]
%
%	table2 = multiTable(3);
%		table2 => 
%		  [0, 1, 2, 3;
% 		   1, 1, 2, 3;
% 		   2, 2, 4, 6;
% 		   3, 3, 6, 9]
%
%==========================================================================
% PROBLEM 2.  mySpace? Who Uses mySpace?
%--------------------------------------------------------------------------
%
% Function Name: mySpaces
% Inputs  (4): - (double) a number to start the vector at
%              - (double) a number to end the vector at
%              - (double) the number of elements in the vector
%              - (char)   a string containing either the word 'linspace' or
%                         'fibspace'
% Outputs (1): - (double) a vector of numbers made according to the
%                         given instructions
%
% Function Description:
%   Write a function called "mySpaces" that takes in a start number, a stop
%   number, the number of elements, and a string of 'linspace' or 'fibspace'.
%
%   If the string is 'linspace', the output vector should be the same as if
%   the start, stop, number of elements, were given to the linspace
%   function. The stop number could be smaller or larger then the start
%	number. 
%
%   If the string is 'fibspace', the output vector should be a vector of
%   fibonacci numbers, with the third input number of elements. (Ignore the
%   first 2 inputs). If you are unfamiliar with the fibonacci sequence,
%	then please see the site below:
%
%				http://en.wikipedia.org/wiki/Fibonacci_number
%
% Notes:
%   - The third input will not be 1 or 2.
%   - You may *NOT* use the linspace() function, and there is no fibspace()
%	  function.
%
% Test Cases:
%   lin1 = mySpaces(1,9,9,'linspace');
%       lin1 => [1 2 3 4 5 6 7 8 9]
%
%   fib1 = mySpaces(1,9,9,'fibspace');
%       fib1 => [1 1 2 3 5 8 13 21 34]
%
%   lin2 = mySpaces(5,2,7,'linspace');
%       lin2 => [5 4.5 4 3.5 3 2.5 2]
%
%   fib2 = mySpaces(5,2,7,'fibspace');
%       fib2 => [1 1 2 3 5 8 13]
%
%==========================================================================
% PROBLEM 3.  Ig-pay Atin-lay 
%--------------------------------------------------------------------------
%
% Function Name: pigLatin
% Inputs  (1): - (char) A word or phrase to be translated into Pig Latin            
% Outputs (1): - (char) The translated word or phrase
%
% Function Description:
%   Pig Latin is a language game of word alterations that has existed in
%   some form since the late 1800s. Modern Pig Latin is a simple encodement
%   of words created by rearranging and adding specific syllables to the 
%   end of English words. Write a function called "pigLatin" that takes in 
%   a string containing a word or phrase and returns the same string
%   translated into Pig Latin.
%
%   The rules for translating into Pig Latin are as follows:
%
%   1. In words that begin with a consonant sound, the initial consonant or
%      group of consonants is moved to the end of the word, and the syllable
%      "ay" is added. A hyphen is placed before the moved consonants for
%      clarity in transcribing back to English.
%        e.g.  "computer" -> "omputer-cay" and "stranded" -> "anded-stray"
%
%   2. In words that begin with a vowel, the syllable "way" is added to the
%      end of the word and is preceded by a hyphen.
%        e.g.  "almond" -> "almond-way" and "under" -> "under-way"
%
% Notes:
% 	- The input string may be a single word or a phrase containing
%     several words separated by spaces.
%   - The input string is guaranteed to contain only lowercase letters.
%	- For this function, you should consider "y"s and "h"s found at
%	  the beginning of words to be consonants.
%
% Hints:
%	- You may find the strtok() and isempty() functions useful.
%
% Test Cases:
%	out1 = pigLatin('elephant')
%       out1 => 'elephant-way'
%
%   out2 = pigLatin('the breakfast of champions')
%       out2 => 'e-thay eakfast-bray of-way ampions-chay'
%
%   out3 = pigLatin('you had me at hello world')
%       out3 => 'ou-yay ad-hay e-may at-way ello-hay orld-way'
%
%==========================================================================
% PROBLEM 4.  What's Inside the Box? 
%--------------------------------------------------------------------------
%
% Function Name: boxedIn
% Inputs  (1): - (double) an NxN array
% Outputs (1): - (double) the array of containing what is inside the 
%                         smallest "box"
%
% Function Description:
%   Write a function called "boxedIn" that takes in a square array that
%   may or may not have a "box" and then returns the array or numbers that
%   are contained within the smallest "box". If there is not "box" inside
%   the array, then the function should return an empty vector. 
%
%   A "box" occurs when a ring of the array is made up of the same number.
%   For example:
%
%   array = [7 7 7 7 7;7 2 5 3 7; 7 9 0 2 7; 7 3 1 1 7; 7 7 7 7 7];
%   
%          =>        [ 7 7 7 7 7
%                      7 2 5 3 7
%                      7 9 0 2 7
%                      7 3 1 1 7
%                      7 7 7 7 7 ]
%
%   In this case, the 7s acts as the "box", since they make a ring around 
%   the array that is made up of the same number. The function would then
%   return the 3x3 array contained within the "box" of 7s.
%  
%   The input array may contain be multiple "boxes" or none at all. If there
%   are multiple "boxes", the function should return whatever is in the
%   smallest "box". Otherwise, it should return an empty vector.
%
%
% Notes: 
%   - In the case of an even numbered NxN array (i.e. 4x4, 6x6, etc.),
%     the very middle and smallest 2x2 array can act as a box. If this is
%     the case, then return the empty vector because it encloses nothing.
%   - In the case of an odd numbered NxN array (i.e. 3x3, 5x5, etc.), do 
%     not count the number in the very middle as a 1x1 box. So if the odd
%     dimensioned array does not have any rings that act as a box, return
%     the empty vector (See Test Case 4).
%
%
% Hints:
%   - The all(), floor(), an isempty() functions may be useful.
%   - If you can cleverly index the array, the solution will not be very
%     many lines of code.
%  
%
% Test Cases:
%	array = [3 3 3 3 3; 3 1 1 1 3; 3 1 9 1 3; 3 1 1 1 3; 3 3 3 3 3];
%  	out = boxedIn(array);
%  		out => 9
%
%  	array = [2 5 4 3 9 9; 3 4 4 4 4 9; 0 4 7 8 4 0; 0 4 1 3 4 8; ...
%  	         9 4 4 4 4 9; 3 4 5 0 9 8]
%  	out= boxedIn(array);
%  		out => [7 8; 1 3]
%
%  	array = [8 8 8 8; 8 2 2 8; 8 2 2 8; 8 8 8 8];
%  	out= boxedIn(array);
%  		out => []
%
%  	array= [2 2 1; 2 8 2; 2 2 2];
%  	out= boxedIn(array);
%  		out => []
%
%==========================================================================
% PROBLEM 5.  And Bingo Was His Name-O! 
%--------------------------------------------------------------------------
%
% Function Name: bingoChecker
% Inputs  (2): - (logical) An NxN array that represents a Bingo board
%              - (char)    A list of moves separated by commas
% Outputs (2): - (logical) The updated bingo board
%              - (logical) A logical indicating whether or not you got 
%                          bingo
%  
% Function Description:
%   Write a function called "bingoChecker" that takes in a logical array
%   representing a bingo board and a string representing a list of moves,
%	and then returns the updated board and a logical flag indicating
%	whether or not you got bingo.
%     
%   The board will be a square array of logical values (true/false). A
%   logical true means that there is a token on that spot while false means
%   that it is vacant.
%     
%   The second input is a string containing a list of moves that will be
%   used to update the bingo board. Each move will be formatted with a
%   letter representing the corresponding column in a typical Bingo board,
%   where each column represents one letter in the word 'BINGO', and a
%   row number from 1 to 5. 
%     
%   To have Bingo, you must have 5 spots occupied in a row horizontally, 
%   vertically, or diagonally.
%     
%   Given the following example of a 5x5 Bingo board:
%
%                       B  I  N  G  O
%                   1   T  F  F  F  F
%                   2   T  F  F  T  F
%                   3   T  F  T  F  F
%                   4   T  F  F  F  F
%                   5   F  F  F  F  F
%     
%   And a list of moves consisting of 'B5,O2,O4'. The updated bingo board
%   would be like the one below, and we would have Bingo.
%
%                       B  I  N  G  O
%                   1   T  F  F  F  F
%                   2   T  F  F  T  T
%                   3   T  F  T  F  F
%                   4   T  F  F  F  T
%                   5   T  F  F  F  F
%     
% Notes:
%	- The column headers are guaranteed to be capital letters spelling 
%     out "BINGO". 
%  	- If the second input is an empty string, then just return the
%	  original Bingo board.
%         
% Test Cases:
% 	board1 = [true, false, false, false, false;...
%             true, false, false, true, false;...
%             true, false, true, false, false;...
%             true, false, false, false, false;...
%             false, false, false, false, false];
% 	moves1 = 'B5,O2,O4';
% 
% 	[update1, bingoResult1] = bingoChecker(board, moves1);
%     	update1 => 
%           [true     false     false     false     false
%            true     false     false     true      true
%            true     false     true      false      false
%            true     false     false     false     true
%            true     false     false     false     false]
%     	bingoResult1 => true
%
% 	board2 = [false, false, true;...
%             false, false, false;...
%             false, false, false];
% 	moves2 = 'I2,I1,B3,N3';
% 
%  [update2, bingoResult2] = bingoChecker(board2, moves2);
%      update2 => 
%           [false     true     true
%            false     true     false
%            true      false    true]
%      bingoResult2 => true
%  
% 	moves3 = '';
%
% 	[update3, bingoResult3] = bingoChecker(board1, moves3);
%       update3 => 
%           [true     false    false    false    false
%            true     false    false    true     false
%            true     false    true     false    false
%            true     false    false    false    false
%            false    false    false    false    false]
%      	bingoResult3 => false
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
