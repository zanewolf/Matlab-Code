%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw07
% Course       : CS1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%               
% Files provided with this homework:  
%   - hw07.m
%   - ABCs_cell_arrays.m
%   - ABCs_structures.m
%
% Files to submit:
%   - hw07.m
%   - ABCs_cell_arrays.m
%   - ABCs_structures.m
%	- modifyFields.m
%   - deepestCell.m
%   - sortFieldnames.m
%   - getAncestor.m
%   - findNums.m
%   - minesweeper.m
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
%  >> ABCs_pretest_hw07
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
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   7.1 Cell Arrays
%   7.4 Structures
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Homework Video of the Week:
%
% http://www.youtube.com/watch?v=0WBmrrRKg-c
%
%==========================================================================
% PROBLEM 1 - "...and I Show You How Deep the Rabbit-Hole Goes." 
%--------------------------------------------------------------------------
%
% Function Name: deepestCell  
% Inputs  (1): - (cell)   A 1-dimensional cell array containing any number of
%                         nested cells
% Outputs (2): - (double) The index at which the most nested cell is found
%              - (double) The "depth" of the most nested cell
%                   
% Function Description:
%   Write a function called "deepestCell" that takes in a cell array of
%   nested cells and determines the index at which the most nested cell is
%   located and how deep that nested cell is. The "depth" is defined as how
%   many nested cells the data are contained in, and does *NOT* include the
%   enclosing cell array. If there are two deepest cells, then the function
%   should return the lowest index. For further description of cell
%   "depth", please see below:
%
%   Given the cell array:
%      exampleCA = {{'Drive safely!'}, {{{{[false false false]}}}}, {{8}}}
%
%   - The depth of the cell in the first position of exampleCA is 1,
%     because there is 1 nested cell inside of the cell array.
%   - The depth of the cell in the second position of exampleCA is 4,
%     because there are 4 nested cells inside of the cell array.
%   - The depth of the cell in the third position of exampleCA is 2,
%     because there are 2 nested cells inside of the cell array.
%
% Notes:
%   - All nested cells with contain non-empty data of type 'char', 'double'
%     or 'logical'.
%   - The length of the cell array is guaranteed to be at least 1.
%   - The nested cells will always be 1x1, but the data contained in them
%     will not always be.
%   - All nested cells will have a depth of at least 1.
%
% Hints:
%   - You may find the iscell() function helpful in solving this problem.
%
% Test Cases:
%   cA1 = {{{'pumpkin pie'}}, {{{{'pi*r^2'}}}}, {'pie are round'}};
%   [index1 depth1] = deepestCell(cA1);
%       index1 => 2
%       depth1 => 4
% 
%   cA2 = {{{{{{'CS'}}}}}, {{{'1371'}}}, {{{{{{{{'rulez'}}}}}}}}};
%   [index2 depth2] = deepestCell(cA2);
%       index2 => 3
%       depth2 => 8
%
%   cA3 = {{{{{[true true true true false]}}}}};
%   [index3 depth3] = deepestCell(cA3);
%       index3 => 1
%       depth3 => 4
%
%   ***Note that in the third test case the outer brackets are still
%   considered to be cell array brackets and are NOT included in the
%   depth!***
%
%
%==========================================================================
% PROBLEM 2 - Sorting a Structure By Its Fieldnames
%--------------------------------------------------------------------------
%
% Function Name: sortFieldnames
% Inputs  (1): - (struct) a 1x1 structure with at least 1 field
% Outputs (1): - (struct) the same structure with the fieldnames in
%                         alphabetical order
%
% Function Description:   
%   Write a function called "sortFieldnames" that takes in a 1x1 structure
%   with at least 1 field and returns the same structure with the
%   fieldnames in alphabetical order. The data originally contained in the
%   fields can be of any type and length (including empty) and the data
%   should remain in the same field after alphabetizing. The fieldnames can
%   be any combination of letters and numbers that make up a valid
%   fieldname.
%
% Notes:
%   - All fieldnames will be unique strings.
%
% Hints:
%   - You may find the fieldnames() function helpful in solving this
%     problem.
%
% Test Cases:
%   s1 = struct('name', 'Brooks', 'year', 5, 'instruments', ...
%                   'all of them', 'isHilarious', true, 'yeet', true);
%
%   news1 = sortFieldnames(s1);
%       news1 => struct('instruments', 'all of them', 'isHilarious', ...
%                          true, 'name', 'Brooks', 'year', 5, 'yeet', true)
%
%   s2 = struct('alan', 3, 'Alan', 2, 'aLan', 11, 'AL', 15, 'ALAN', 46, ...
%                   'Steve', 42);
%
%   news2 = sortFieldnames(s2);
%       news2 => struct('AL', 15, 'ALAN', 46, 'Alan', 2, 'Steve', 42, ...
%                   'aLan', 11, 'alan', 3)
%
%
%==========================================================================
% PROBLEM 3 - Who's Your Daddy?
%--------------------------------------------------------------------------
%
% Function Name: getAncestor
% Inputs  (3): - (cell) a cell array of people's sons
%              - (cell) a cell array of people's fathers
%              - (char) a string containing the name of a person
% Outputs (1): - (cell) a cell array of the lineage of the input person
%
% Function Description:
%   Given a cell array of sons, a cell array of fathers, and a string
%   containing a son's name, create a cell array of the lineage.  The cell
%   array should start with the beginning of the family line (a son who
%   doesn't have a father), and continue on with the last name being the 
%   person you started with (the third input).
%
% Notes:
%   - It is guaranteed that the two input cell arrays will be of the same
%     length.
%	- It is guaranteed that the Nth cell of the fathers cell array is
%	  the father of the person in the Nth cell of the sons cell array.
%	- If a name appears in the fathers cell array, it will also appear in
%	  the sons cell array.  
%
% Hint:
%	- One of the fathers cells will contain an empty string, because he
%     is the beginning of the lineage line (the son at this index will
%	  start your output cell array). 
%
% Test Cases:
%   sons = {'David', 'Christopher', 'Harris', 'Adam', 'Billy', 'Greg', ...
%       'Fred', 'Eli'};
%   fathers = {'', 'David', 'Fred', 'Christopher', 'Greg', 'Eli', ...
%       'Billy', 'Adam'};
%
%   out1 = getAncestor(sons, fathers, 'Harris');
%       out1 => {'David','Christopher','Adam','Eli','Greg','Billy',...
%           'Fred','Harris'}
%
%	out2 = getAncestor(sons, fathers, 'Greg');
%		out => {'David','Christopher','Adam','Eli','Greg'}
%
%   out3 = getAncestor(sons, fathers, 'David');
%       out => {'David'}
%
%==========================================================================
% PROBLEM 4 - Find the Rectangle of Numbers in a Cell Array 
%--------------------------------------------------------------------------
%
% Function Name: findNums
% Inputs  (1): - (cell) a cell array of mixed text and numbers 
% Outputs (1): - (double) an array containing only the numbers 
%
% Function Description:
%	Write a function called "findNums" that takes in a cell array
%	containing any type of data, finds the smallest rectangle that
%	contains all of the numerical (double) values. When that rectangle has
%	been found, all the numerical values must be extracted and saved in an
%	array that will be returned as an output.
%
% Hints:
%	- There may be non-numeric entries within the numerical rectangle
%     (see test cases 2-5).  Any non-numeric values within the number
%     rectangle musst be relaced by NaN - "not a number".
%	- NaN is a double value and is *NOT* the same as the string
%	  containing 'NaN'.
%
% Test Cases:
%     ca1 = {'name' 'ID'         'HW1' 'HW2' 'Tst1' 'Final';
%           'Sam'  'sjones42'    82    92     28      97;
%           'Fred'  'fbrown3'    91    64     55      16;
%           'Sally'  'sjones39'  13    10     96      98 };
%
%     grades1 = findNums(ca1);   
%       grades1 =>
%         82    92    28    97
%         91    64    55    16
%         13    10    96    98
%
%     ca2 = {'name' 'ID'         'HW1' 'HW2' 'Tst1' 'Final';
%           'Sam'  'sjones42'    82    92     28      97;
%           'Fred'  'fbrown3'    'n/a' 64     55      16;
%           'Sally'  'sjones39'  13    'n/a'  96      98 };
%
%     grades2 = findNums(ca2);
%       grades2 =>
%         82    92    28    97
%        NaN    64    55    16
%         13   NaN    96    98
%     
%     ca3 = {'name' 'ID'         'HW1' 'HW2' 'Tst1' 'Final' 'Letter';
%           'Sam'  'sjones42'    82    92     28      97      'A';
%           'Fred'  'fbrown3'    'n/a' 64     55      16      'F';
%           'Sally'  'sjones39'  13    'n/a'  96      98      'B'};
%
%     grades3 = findNums(ca3);
%       grades3 =>
%         82    92    28    97
%        NaN    64    55    16
%         13   NaN    96    98
%     
%     ca4 = {'Sam'  'sjones42'    82    92     28      97      'A';
%           'Fred'  'fbrown3'    'n/a'  64     55      16      'F';
%           'Sally'  'sjones39'   13    'n/a'  96      98      'B';
%           'Totals'  {}         'n/a'  'n/a'  179    211      {} };
%     grades4 = findNums(ca4);
%       grades4 =>
%         82    92    28    97
%        NaN    64    55    16
%         13   NaN    96    98
%        NaN   NaN   179   211
%     
%     ca5 = {'Sam'  'sjones42';
%           'Fred'  'fbrown3';
%           'Sally'  'sjones39';
%           'Totals' 'n/a'};
%     grades5 = findNums(ca5);
%       grades5 => []
% 
%     grades6 = findNums({});
%       grades6 => []
%
%==========================================================================
% PROBLEM 5 - BOOM!
%--------------------------------------------------------------------------
%
% Function Name: minesweeper
% Inputs  (1): - (cell) a cell array that represents a minesweeper board
% Outputs (1): - (cell) a cell array with updated minefield number
%
% Function Description:
%   Given a cell array which represents a minesweeper board filled with 
%   mines, write a function called "minesweeper" that searches through the
%	cell array and adds numbers to the minefield that marks the number of
%	mines around each square. The function should return a new cell array
%	with those numbers updated.
% 
%   Each square is surrounded by 8 adjacent squares. The number shown
%   in each square depends on the number of mines around that square.
%   We will use '*' to represent a mine, '3' to represent a square
%   surrounded by 3 mines, [] to represent a string of number needs to be
%   filled in. 
% 
%   For example, given:
%      {[] '*' []
%       [] [] '*'
%       [] '*' []}
%   The function should return:
%      {'1' '*' '2'
%       '2' '3' '*'
%       '1' '*' '2'}
%   
%   You should iterate through each square and find how many mines are
%   adjacent. Then put that number into the current square.
%   
% Hints:
%   - You might find isempty() useful for determining whether there is an
%     adjacent mine.
%   - It may be helpful to create a new board with empty borders to avoid
%     indexing out of bounds. Then remove the board for the final answer.
%   - You might find cell() useful for creating a new board.
%
% Test Cases:
%   board1 = {[] []  []
%             [] '*' []
%             [] []  []}
%   ret_board1 = minesweeper(board1)
%       ret_board1 => {'1','1','1'
%                      '1','*','1'
%                      '1','1','1'}
%   board2 = {[] '*' []
%             [] []  '*'
%             [] '*' []}
%   ret_board2 = minesweeper(board2)
%       ret_board2 => {'1','*','2'
%                      '2','3','*'
%                      '1','*','2'}
%   board3 = cell(5,6);
%   board3{2,3} = '*';
%   board3{3,5} = '*';
%   board3{4,1} = '*';
%   board3{5,4} = '*';
%   board3{1,3} = '*';
%   ret_board3 = minesweeper(board3)
%       ret_board3 => {'0','2','*','2','0','0'
%                      '0','2','*','3','1','1'
%                      '1','2','1','2','*','1'
%                      '*','1','1','2','2','1'
%                      '1','1','1','*','1','0'}
%
%
%==========================================================================
% PROBLEM 6 -  Chopsticks!
%--------------------------------------------------------------------------
%
% Function Name: handChopsticks
% Inputs  (2): - (struct) a structure containing the orginal number of 
%                         fingers on each hand for the game of chopsticks
%              - (cell)   a cell array containing the moves for chopsticks
% Outputs (1): - (struct) a structure containing the final number of
%                         fingers extended
%
% Function Description:
%   Given a structure where each field representing a player's hands and a
%   cell array with moves, write a function called "handChopsticks" that
%   outputs a structure representing the final values on each hand.
%
%   The game of chopsticks is a two player game in which players start with
%   one finger extended on each hand. The players then take turns tapping
%   the eachother's hands. If the player taps his opponent's hand the
%   number of fingers extended on his hand adds to the number of fingers on
%   the opponent's hand. If he taps his own hand the number of fingers on
%   each hand redistributes. The objective is to force all five fingers of
%   the opponents hand to extend, removing that hand from the game. If the 
%   player loses both his hands then he is out. To see a visual 
%   representation of the game, you may check out this YouTube video:
%
%       http://www.youtube.com/watch?v=gm8asL2t_oM&feature=related
%
%   For this problem you will be given a structure formatted with the
%   fieldnames, "LH_A, RH_A, LH_B, RH_B" that correspond the the "Left Hand
%   Player A", "Right Hand Player A", etc. For each field the value
%   corresponds to the number of fingers extended on that hand. A cell
%   array will given containing different moves formatted "<fieldname of
%   corresponding hand> to <fieldname of corresponding hand>". An example
%   would be "LH_A to RH_B" meaning the Left Hand of Player A to tap Right
%   Hand of Player B.
% 
%   There are four possible results of a move:
% 
%   1. If Player A taps Player B or vice versa, the value from the first
%   player's hand is added to the second player's hand. The first player's
%   hand value does not change.
%     Example =>
%           LH_A: 2
%           RH_A: 3
%           LH_B: 4
%           RH_B: 1 
%     
%     Move => "LH_A to RH_B"
%
%     Result =>
%           LH_A: 2
%           RH_A: 3
%           LH_B: 4
%           RH_B: 3
%
%   2. If Player A (or B) taps his own hand and the value of the two hands
%   added is even, then both hands have half the total value.
%     Example =>
%           LH_A: 1
%           RH_A: 3
%           LH_B: 4
%           RH_B: 2
%
%     Move => "LH_A to RH_A"
%
%     Result =>
%           LH_A: 2
%           RH_A: 2
%           LH_B: 4
%           RH_B: 2
% 
%   3. If Player A (or B) taps his own hand and the value of the two hands
%   added is odd, then the first hand should have one more than the second
%   hand.
%     Example =>
%           LH_A: 2
%           RH_A: 3
%           LH_B: 4
%           RH_B: 1
%
%     Move => "LH_A to RH_A"
%
%     Result =>
%           LH_A: 3
%           RH_A: 2
%           LH_B: 4
%           RH_B: 1
% 
%   4. If the value of the hand equals or exceeds 5, the fieldname for that
%   hand should be removed.
%     Example =>
%           LH_A: 2
%           RH_A: 3
%           LH_B: 4
%           RH_B: 1
%
%     Move => "LH_A to LH_B"
%
%     Result =>
%       LH_A: 2
%       RH_A: 3
%       RH_B: 1
%
% Test Cases:
% 	hands1 = struct('LH_A',3,'RH_A',2,'LH_B',1,'RH_B',2);
%   moves1={'LH_A to LH_B', 'LH_B to RH_B', 'RH_A to LH_A'};
%
% 	hands2 = struct('LH_A',4,'RH_A',1,'LH_B',2,'RH_B',3);
%   moves2={'RH_A to LH_B', 'RH_B to LH_A'};
%
%   out1 = handChopsticks(hands1,moves1);
%       out1 => LH_A: 2
%               RH_A: 3
%               LH_B: 3
%               RH_B: 3
% 
%	out2 = handChopsticks(hands2,moves2);
%       out2 => RH_A: 1
%               LH_B: 3
%               RH_B: 3
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
