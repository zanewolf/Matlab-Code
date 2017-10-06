%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw08
% Course       : CS1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                
% Files provided with this homework:  
%   - hw08.m
%   - getTreasureMap.p
%   - ABCs_structure_arrays.m
%   - ABCs_pretest_hw08.p
%
% Files to submit:
%   - hw08.m
%   - ABCs_structure_arrays.m
%   - sortStruct.m
%   - reorganize.m
%   - UNO.m
%   - cellTOStruct.m
%   - findBoss.m
%   - findTreasure.m
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
%
%
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
%  >> ABCs_pretest_hw08
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
%
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   7.4 Structure Arrays
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
% PROBLEM 1. Sorting Structures
%--------------------------------------------------------------------------
%
% Function Name: sortStruct
% Inputs  (2): - (struct) a 1xN structure array
%              - (char)   a field name that may or may not be in the
%                         structure array
% Outputs (1): - (struct) a 1xN array of structures that is the original
%						  structure array sorted by the values in the
%						  specified input field, if the specified field
%						  existed in the structure array
%
% Function Description:
%   Write a function called "sortStruct" that takes in a structure array
%	and then sorts the structure array by the values in the field given
%	in the second input. If the values are numeric, then the structure
%	should be sorted from lowest to highest. If the values are characters,
%	then the structure should be sorted the alphabetically by the *words*
%	(with case mattering, e.g. 'Apples' is before 'apples'). If the field
%	does not exist in the structure array, then the function returns the
%	string 'Invalid Field Name'.  
%
% Note:
%   - You may assume that each field in the input structure array will
%	  contain either doubles or chars, but not both.
%
% Hint: 
%   - The second output of the sort() function may be helpful.
%
% Test Cases:
%   strArr = struct('Instrument', {'Trumpet', 'cello', 'Violin',... 
%               'Piano','viola'},'Price', {129.95, 493, 2550, 4999,...
%               356}, 'Year', {2005, 1958, 1923, 1997, 2008});
%   sortStrArr1 = sortStruct(strArr, 'Instrument')
%   sortStrArr1 => struct('Instrument', {'Piano', 'Trumpet', 'Violin',...
%         'cello', 'viola'},'Price', {4999, 129.95, 2550, 493,  356}, ...
%         'Year', {1997, 2005, 1923, 1958, 2008});
%
%   sortStrArr2 = sortStruct(strArr, 'Price')
%   sortStrArr2 => struct('Instrument', {'Trumpet', 'viola', 'cello', ...
%         'Violin', 'Piano'},'Price', {129.95, 356, 493, 2550, 4999, }, ...
%         'Year', {2005, 2008, 1958, 1923, 1997, });
%
%   sortStrArr3 = sortStruct(strArr, 'Year')
%   sortStrArr3 => struct('Instrument', {'Violin', 'cello', 'Piano',... 
%          'Trumpet', 'viola'},'Price', {2550, 493, 4999, 129.95, 356}, ...
%          'Year', {1923, 1958, 1997, 2005, 2008});
%
%   sortStrArr4 = sortStruct(strArr, 'No_Field')
%   sortStrArr4 => 'Invalid Field Name'
%
%==========================================================================
% Problem 2. Time for Fall Cleaning!
%==========================================================================
%
% Funtion Name: reorganize
% Inputs  (2): - (struct) A structure array representing a phone book
%                (cell)   A cell array of first names
% Outputs (1): - (struct) An updated phonebook
%
% Function Description:
% 	So... you've come to a point in your life where you need to do some 
% 	re-evaluating. The obvious first thing you would do is reorganize
% 	your phone book. You've had a falling out with some people, so they
%	don't need a spot in your phone book anymore. You have no need to use
%	fax or pager numbers anymore, so let's get rid of those too. Your
%	current phone book is also not in any particular order, so let's
%	alphabetize it.
%
%   Write a function called "reorganize" that takes in a structure array 
%   representing a phone book and a cell array of people to delete and 
%   returns an updated structure array. 
%     
%   Things you need to do to the structure array:
%     1. Alphabetize by last name
%     2. Get rid of fax numbers or pager numbers
%     3. Get rid of the people whose names are given in the second input
%      
% Notes:
% 	- If there was a fax number or pager number in the structure
%     array, the corresponding fieldnames would be 'faxnumber' and
%     'pagernumber', respectively.
%   - You are guaranteed to have at least two field names. One being
%     'firstname' and the other being 'lastname'. There will always be
%     strings in those fields.
%   - The names in the second input (the cell array) are guaranteed to be 
%     in the structure as a first name.
%
%  Test Cases:
%   s1 = struct('firstname', {'Toucan', 'Tony', 'Count', 'Lucky', 'Capn'}, ...
%       'lastname', {'Sam', 'TheTiger', 'Chocula', 'Leprachaun', 'Crunch'});
%   ca1 = {'Toucan', 'Tony'};
%   out1 = reorganize(s1, ca1);
%   	out1 => struct('firstname', {'Count', 'Capn', 'Lucky'}, 'lastname', ...
%       {'Chocula', 'Crunch', 'Leprachaun'});
% 
%   s2 = struct('firstname', {'Toucan', 'Tony', 'Count', 'Lucky', 'Capn'}, ...
%       'lastname', {'Sam', 'TheTiger', 'Chocula', 'Leprachaun', 'Crunch'}, ...
%       'faxnumber', 3);
%   ca2 = {'Tony'};
%   out2 = reorganize(s2, ca2);
%   	out2 => struct('firstname', {'Count', 'Capn', 'Lucky', 'Toucan'}, 'lastname', ...
%       {'Chocula', 'Crunch', 'Leprachaun', 'Sam'});
%
%   s3 = struct('cellnumber', '985-655-2500', 'faxnumber', '781-452-2079', ...
%        'firstname', {'Abraham', 'George', 'Thomas'}, 'pagernumber', 404, ...
%        'lastname', {'Lincoln', 'Washington', 'Jefferson'});
%   ca3 = {};
%   out3 = reorganize(s3, ca3);
%   	out3 => struct('cellnumber', '985-655-2500', 'firstname', {'Thomas', ...
%        'Abraham', 'George'}, 'lastname', {'Jefferson', 'Lincoln',...
%        'Washington'})
%
%==========================================================================
% PROBLEM 3. You Know, UNO! 
%--------------------------------------------------------------------------
%
% Function Name: UNO
% Inputs  (2): - (struct)      A 1xn structure array with fieldnames 'Color'
%                              and 'Number'
%              - (struct)      A 1x1 structure with fieldnames 'Color' and
%                              'Number'
% Outputs (1): - (struct/char) A 1xn structure array with fieldnames
%                              'Color' and 'Number' OR the string 'Sorry, 
%                              draw a card!'
%
% Function Description:
%   Write a function called "UNO" that takes in a structure array
%   representing the cards in a player's hand in a game of UNO and a 1x1
%   structure representing the card previously played. The function should
%   return a structure array representing all the cards in the player's
%   hand that could be played next based on the rules of the game 
%   described below. If no cards in the player's hand can be played, the 
%   output should be the string 'Sorry, draw a card!'.
%
%   In the game of UNO, cards are identified by both a number (0-9) and a
%   color (Red, Green, Blue, or Yellow).  On a given turn, a card may be
%   played if it has the same number and/or color as that of the previously
%   played card.  For example, if a Blue 5 is played, the next card played
%   must be a Blue card of any number or a 5 of any color. An UNO deck also
%   contains Wild cards that may be played after any card, regardless of
%   number or color. Likewise, for the purpose of this problem, we will
%   assume that if a Wild card is played, any other card may be played
%   after it.
%
%   In this function, each structure will represent an individual card. 
%   Each card will contain the same two fieldnames: 'Color', which may
%   contain one of the four UNO colors as a string (i.e. 'Red', 'Green', 
%   'Blue', 'Yellow'), and 'Number', which may contain a number 0-9. Any 
%   card that does not contain a color or number as specified above is a 
%   wild card and will contain the string 'Wild' in both the 'Color' and 
%   'Number' fields. The output structure array should have the same 
%   fieldnames and should return all cards that can be played in the order 
%   in which they appear in the original hand.
%   
%   Note that since an UNO deck contains two of every card with numbers
%   1-9, it is possible that duplicate cards may appear in the player's
%   hand. If identical cards are able to be played, they should both be
%   returned in the output structure array.
%
% Note:
%  	- You may not use the unique() function in the solution to this problem.
%
% Test Cases:
%	hand1 = struct('Color', {'Green', 'Blue', 'Yellow', 'Yellow',...
%            'Blue'}, 'Number', {0, 3, 2, 9, 6});
%
%   hand2 = struct('Color', {'Red', 'Yellow', 'Blue', 'Blue', 'Wild'}, ...
%            'Number', {5, 6, 0, 0, 'Wild'});
%   
%   card1 = struct('Color', 'Yellow', 'Number', 2);
%
%   card2 = struct('Color', 'Red', 'Number', 7);
%
%   card3 = struct('Color', 'Red', 'Number', 3);
%
%   card4 = struct('Color', 'Wild', 'Number', 'Wild');
%
%   out1 = UNO(hand1, card1);
%       out1 => looks like:  
%           struct('Color', {'Yellow', 'Yellow'}, 'Number', {2, 9});
%
%   out2 = UNO(hand1, card2);
%       out2 => 'Sorry, draw a card!'
%  
%   out3 = UNO(hand2, card3);
%       out3 => looks like:  
%           struct('Color', {'Red', 'Wild'}, 'Number', {5, 'Wild'})
%
%   out4 = UNO(hand2, card4);
%       out3 => looks like:  
%           struct('Color', {'Red', 'Yellow', 'Blue', 'Blue', 'Wild'}, ...
%            'Number', {5, 6, 0, 0, 'Wild'});
%
%==========================================================================
% PROBLEM 4. Self Destruct 
%--------------------------------------------------------------------------
%
% Function Name: cellTOstruct
% Inputs  (1): - (cell) A cell
% Outputs (1): - (struct) A structure or structure array
%
% Function Description:
%   Given a cell, write a function called "cellTOstruct" that will change
%	the input from a cell to a structure in the way described below:
%
%   The input is a cell, your function should act similarly to the
%   struct() function, where the odd indexed elements of the cell are
%   fieldnames, and the even indexed elements are the corresponding values
%   for the fields.  So st = cellTOstruct({'name' 'dilan' 'age' 100})
%   would return the equivalent of struct('name','dilan','age',100):
%                           st =
%                               name: 'dilan'
%                               age: 100
%   
%   If one of the even indices is a cell array, you will need to create a 
%   structure array to represent all of the values for that field. To fill in
%   the structures, repeat the values for their respective fields (like the
%   struct function). So st = cellTOstruct({'name' {'dilan' 'mike'} 'age' 100})
%   would return:
%                           st(1) =
%                               name: 'dilan'
%                               age:   100
%
%							st(2) =
%								name: 'mike'
%								age:  100
%
% Notes:
%   - The even indices will all be one cell OR all be one cell except one
%     with a nested cell array. (So you will never have an even index that
%	  is a nested cell array of 3 values while another even index has a nested
%	  cell array of 4 values. If an even index is a nested cell array with 3
%	  values, the other even indices will only have 1 value)
%   - The odd indexes will always contain only a single string.
%	- You may *NOT* use struct(), cell2struct(), or struct2cell() to
%	  complete this problem.
%
% Test Cases:
%   ca1 = {'field1', 'value1', 'field2', 'value2'}
%   st1= cellTOstruct(ca1)
%       st1 => field1: 'value1'
%              field2: 'value2'
%
%   ca2 = {'field1', 'value1', 'field2', {'value2' 'value3'}, 'field3', [1 2]}
%   st2= cellTOstruct(ca2)
%       st2(1) => field1: 'value1'
%                 field2: 'value2'
%                 field3:  [1 2]
%		st2(2) => field1: 'value1'
%				  field2: 'value3'
%				  field3:  [1 2]
%
%==========================================================================
% PROBLEM 5. Like a Boss!
%--------------------------------------------------------------------------
%
% Function Name: findBoss
% Inputs  (2): - (struct) A structure array containing employees and their
%                         bosses
%              - (char)   The name of an employee
% Outputs (1): - (cell)   A cell array of that employee's boss. 
%
% Function Description:
%   Given a structure array with two field names, 'employee' and
%   'boss', and the name of an employee, create a cell array of that 
%   employee's boss, and their boss, and so on, until an employee is found
%   that does not have a boss. An employee that doesn't have a boss will
%   be indicated by an empty vector in the 'boss' field.
%
% Notes:
%	- The structure array will always contain the given employee.
%
% Test Cases:
% 	st = struct('employee', {'Michael', 'Pam', 'Jim', 'Dwight', ...
% 	'Stanley', 'Andy', 'Phyllis'}, 'boss', {[], 'Dwight', 'Michael', 'Jim',... 
%   'Andy', 'Pam', 'Stanley'})
%   
%   boss1 = findBoss(st, 'Pam')
%       boss1 => {'Dwight', 'Jim', 'Michael'}
%
%	boss2 = findBoss(st, 'Michael')
%       boss2 => {}
%
%==========================================================================
% PROBLEM 6. Fun With Structure Arrrrrrrrrrrays!
%--------------------------------------------------------------------------
%
% Function Name: findTreasure
% Inputs  (2): - (struct) A 2-dimensional structure array representing a
%                         "treasure map"
%              - (double) A 1x2 vector specifying the row and column (in
%                         that order) that the treasure hunt starts at
% Outputs (2): - (char)   The treasure that was found
%              - (double) The number of sets of instructions that were
%                         followed to find the treasure
%
% Function Description:
%   You are a pirate. Due to a lengthy series of convoluted and highly
%   improbable events, you have been given a "treasure map" in the form of
%   a 2-dimensional structure array and a 1x2 vector of the form [<row>,
%   <column>] that contains the starting coordinates (row and column
%   indicies) of the treasure hunt. Being a very resourceful pirate, you
%   decide to write a MATLAB function to find the treasure. The function
%   should take in the structure array and vector of starting positions and
%   output a string containing the treasure that you found and a double
%   containing the number of instructions followed in order to reach the
%   treasure.
%   
%   The input structure array is two-dimensional and contains only three
%   fields: "magnitude", "direction", and "treasure" (capitalization
%   guaranteed to be as shown here). The "magnitude" field contains a
%   single integer greater than zero that tells how far you should go in
%   the structure array to find the next set of instructions that lead to
%   the treasure. The "direction" contains one of the strings 'North',
%   'East', 'South', or 'West' (capitalization guaranteed to be as shown
%   here), telling you which direction you should go in the structure array
%   to find the next set of instructions. The "treasure" field contains
%   either the string 'No treasure found' if treasure is not found at that
%   location or another string telling what treasure you have found. For
%   examples, please see below:
%
%   If the "magnitude" field contains 4 and the "direction" field contains
%   'South', then the next instruction will be found 4 spaces below the
%   current space.
%
%   If the treasure was found after following 3 separate instructions (3
%   different magnitude and direction values), then the output should be 3.
%   Likewise, if the treasure was found at the starting position, then the
%   "number of sets of instructions followed" should be zero.
%
% Notes:
%   - The structure array will always have at least 2 rows and columns.
%   - If done correctly, there will always be treasure found.
%
% Hint:
%   - Indexing a 2-dimensional structure array is the same as indexing a
%     2-dimensional array: str(<row>, <col>).
%
% Test Cases:
%   You must call the getTreasureMap function as specified in each test
%   case in order to generate the map correctly. If you do not, then the
%   function will return an empty vector.
%
%	map1 = getTreasureMap('yeet');
%   [treasure1 steps1] = findTreasure(map1, [9, 2]);
%       treasure1 => 'Chest full o'' gold!'
%       steps1 => 8
%
%   map2 = getTreasureMap('bassists rock!');
%   [treasure2, steps2] = findTreasure(map2, [1, 1]);
%       treasure2 => 'The map to Robot-Pirate Island!'
%       steps2 => 5
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
%