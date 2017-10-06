%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         :Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw09
% Course       : CS1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%                 
%
%
% Files provided with this homework:  
%   - hw09.m
%   - abcs_lights.txt 				
%   - abcs_out.txt 					
%   - grades.xls 					
%   - grades1.xls 					
%   - grades1_final.xls 			
%   - grades_final.xls				
%   - techScores.xls					
%   - if.txt						
%   - ramblingWreck.txt				
%   - valentine.txt					
%   - example1.txt					
%   - example2.txt					
%   - textcsv1.csv					
%   - textcsv2.csv					
%   - battleship_board.xls			
%   - battleship_soln1.xls			
%   - battleship_soln2.xls		
%   - battleship_soln3.xls			
%   - ABCs_HighLevelFileIO.m		
%   - ABCs_LowLevelFileIO.m			
%	- ABCs_pretest_hw09.m		
%
% Files to submit:
%   - hw09.m
%   - ABCs_HighLevelFileIO.m
%   - ABCs_LowLevelFileIO.m
%   - xlsGrades.m
%   - sortHeader.m
%   - findQuote.m
%   - readingStats.m
%   - LLcsvread.m
%   - battleship.m
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
%  >> ABCs_pretest_hw09
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


%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - High Level File IO
%   - Low Level File IO
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
% PROBLEM 1.  Reading in an Excel File to Calculate Grades 
%--------------------------------------------------------------------------
%
% Function Name: xlsGrades
% Inputs  (1): - (char) A filename of an Excel file containing names of 
%                       students and test grades  
% Outputs (1): - (char) The name of the student with the highest test
%                       avergage
% Function Description:
%   Given the filename of an Excel file containing class data, write a
%	function called "xlsGrades" that reads in the class data and performs
%	the following operations on the data:
%
%	1. Compute the class average for each test and add this data below
%	   the last student's grade. You should then add 'Class Average' in the
%      first column below the last student's name. 
%	2. Compute each student's average and add this data in the column after
%	   each student's last test grade. Add 'Student Average' in the first
%	   row above this data.
%	3. Compute the class average for all tests and put this data below the
%	   last student's class average.
%	4. Write the new data into a new Excel file with the same name as the
%	   input file, with '_final' attached.
%	5. Return the name of the student with the highest class average.
%
%	An example of the output file naming scheme can be found below:
%
%   Input file: 'gradesFall2011.xls'
%   Output file: 'gradesFall2011_final.xls'
%
%	The Excel file will be in the following format:
%   
%    'Student' 'Test1' 'Test2' 'Test3'...
%    'Speros'    35      42      16
%    'Brandon'  100     100     100
%    'Ben'       80      85      90
%     ...
%
% Notes: 
%   - The Excel file can contain any number of rows and columns.
%
% Test Cases:
%   a = xlsGrades('grades.xls');
%     a => 'Billy'
%	  Output file looks like "grades_final_soln.xls"
%
%   b = xlsGrades('grades1.xls');
%     b=> 'Charlie'
%     Output file looks like "grades1_final_soln.xls"
%
%==========================================================================
% PROBLEM 2.  Sorting an Excel File
%--------------------------------------------------------------------------
%
% Function Name: sortHeader
% Inputs  (2): - (char) The file name of an Excel file
%              - (char) The name of a header to sort by
% Outputs (1): - (cell) Cell array containing the sorted Excel data 
%
% Function Description:   
%	Given the file name of an Excel file, write a function called
%	"sortHeader" that sorts the data alphabetically by the data contained
%	in the column of the given header and returns the sorted data in a cell
%	array. Remember when you are sorting the rows that you must move all
%	information associated with the header as well. Your function must work
%	for any number of rows and columns.
%
% Test Cases:
%	x = 'techScores.xls';
%
%   scores = sortHeader(x, 'Opponent');
%   scores => 'Opponent'              'Tech Points'    'Opponent Points'
%             'Clemson'               [         30]    [             27]
%             'Clemson'               [         39]    [             34]
%             'Duke'                  [         49]    [             10]
%             'Florida State'         [         49]    [             44]
%             'Georgia'               [         24]    [             30]
%             'Iowa'                  [         14]    [             24]
%             'Jacksonville State'    [         37]    [             17]
%             'Miami'                 [         17]    [             33]
%             'Mississippi State'     [         42]    [             31]
%             'North Carolina'        [         24]    [              7]
%             'Vanderbilt'            [         56]    [             31]
%             'Virginia'              [         34]    [              9]
%             'Virginia Tech'         [         28]    [             23]
%             'Wake Forest'           [         30]    [             27]
%
%==========================================================================
% PROBLEM 3.  Too Lazy, Didn't Read...
%--------------------------------------------------------------------------
%
% Function Name: findQuote
% Inputs  (2): - (char) The filename of a text file
%              - (char) A word or phrase in the file you wish to find
% Outputs (1): - (char) A 3-line quote containg the word and line numbers
%                       it was found at. 
%
% Function Description:
%   Given a file and a word or phrase to find in a text file, write a
%   function called "findQuote" that searches through the file to find the
%	line which contains the selected word or phrase. Your function should
%	then return that entire line of text, as well as the line above and
%	below it. 
%   
%   The three lines should be formatted as a quote, with slashes, or '/' 
%   separating each line and double quotes '"' at the beginning and end of
%   the quote. Furthermore, you need to cite which lines that you pulled
%   the quote from at the end of the line in parantheses. For example,
%   given the poem:
%
%   	Valentine - by Cats
%   	Roses are red,
%   	Violets are blue;
%   	All my base
%   	Are belong to you.
%
%   If you are asked to find the word 'base', your code should return: 
%
%	'"Violets are blue;/All my base/Are belong to you." (2-4)'
%
%   Note that, since the first line was a title, it is not considered as
%   the starting line of poetry. You should search for the string 'by' in
%   the first line, and not count that line if it is found. 
%
% Notes:   
%   - You are guaranteed that the poem only contains the word once, and it
%     will not be the word 'by'.
%   - There may or may not be a title. A title will be denoted by the
%     presents of ' - by' in the first line.
%   - To make things easier, you can always assume that you will never find
%     the word in the first line of poetry. 
%
% Hints:
%   - You may find the strfind() function helpful.
%
% Test Cases:
%   ans1 = findQuote('valentine.txt', 'base')
%       ans1 => '"Violets are blue;/All my base/Are belong to you." (2-4)'
%
%   ans2 = findQuote('if.txt', 'Earth')
%       ans2 =>  '"With sixty seconds'' worth of distance run -/',...
%                'Yours is the Earth and everything that''s in it,',...
%                '/And - which is more - you''ll be a Man my son!" ',...
%                '(30-32)'
%
%   ans3 = findQuote('ramblingWreck.txt', 'To Hell with Georgia')
%       ans3 => '"But if I had a son, sir, I'll tell you what he'd ',...
%                'do./He would yell, "To Hell with Georgia," like his ',...
%                'daddy used to do./Oh, I wish I had a barrel of rum '...
%                'and sugar three thousand pounds," (7-9)';
%
%==========================================================================
% PROBLEM 4.  Words, Words, Words! 
%--------------------------------------------------------------------------
%
% Function Name: readingStats
% Inputs  (1): - (char)   A string containing the name of a file 
% Outputs (1): - (struct) A structure displaying outs
%
% Function Description:
%	Given a filename, write a function called "readingStats" that reads in
%	the file, counts the number of words, counts the number of sentences,
%	calculates the reading ease, and stores all of this information in
%	a structure that the function outputs.
%   
%   - Each word will be delimited by a space.
%	- Every sentence will end with a period, a exclamation point, or a
%	  question mark. 
%   
%   In addition, the reading ease needs to be calculated using the formula
%
%   RE = 206.835 - (1.015 * ASL) -(84.6 * AS)
%
%   Where RE stands for reading ease, ASL stands for average sentence
%   length (the average number of words per sentence) and AS stands for the
%   average number of syllables which for the purposes of this function can
%   be calculated by taking the length of the word and dividing it by 2.
%   
%   The values should be returned in a structure with fieldnames "Words",
%   "Sentences", and "ReadingEase" containing the number of words, the
%   number of sentences and the reading ease respectively. 
%
% Hints:
%	- There may be commas in the files. As commas are not
%	  letters, they do NOT count toward the length of a word.
%   - Do *NOT* include punctuation at the end of the sentence (!,.,?) in 
%     the length of the word.
%   - All other punctuation (such as apostrophes) should be included.
%
% Test Cases:
%   out1 = readingStats('example1.txt');
%       out1 =>
%          Words: 6
%      Sentences: 1
%    ReadingEase: -46.0050
%
%   out2 = readingStats('example2.txt');
%       out2 =>
%      	  Words: 147
%     Sentences: 10
%   ReadingEase: 34.2247
%
%==========================================================================
% PROBLEM 5.  You sunk my...wait, what?  
%--------------------------------------------------------------------------
%
% Function Name: battleship
% Inputs  (2): - (cell) 1xM cell array of possible moves. 
%              - (char) Filename of the Excel file which contains the
%                       battleship board. 
% Outputs (1): - (cell) 1xN cell array of the ships that were sunk
% Output Files (1): Excel solution file with '_solution' appended to the
%                   name. 
%
% Function Description:
%   Given a 1xM cell array of M moves and the name of an Excel
%   file which contains a ready-to-play battleship board, write a function
%   called "battleship" that takes the moves, places the moves on the
%	board, and checks to see which ships have been sunk. "battleship"
%	should then  return a list of sunken ships and create a solution
%	Excel file.
%
%   Your output should be a list of all of the ships which have
%   been sunk with the barrage of moves. This list should be a 1xN cell
%   array, where N is the number of ships that have been sunk. Make sure
%   the ships are spelled exactly as shown below, and that the list is
%	sorted.
%   
%   Your function should also create a solution Excel board. To create the
%   solution board, place a X to mark a hit, and place an "O", not zero, 
%   to mark a miss. The filename of the solution should have '_solution'
%   appended to the end. So if the board is named 'board.xls', the 
%   solution file should be 'board_solution.xls'. 
%
% Battleship Background: 
%   Battleship is played on a 10x10 board. The rows are listed from A-J and
%   the columns are numbered from 1-10. There are 5 ships in our version of
%   battleship (one of each of the 5 types of ship). Each ship is repsented
%	by an initial. The name of the ships, the initial(s), and the length of
%	the ships are given below. 
% 
%   Ship Name       | Initials  | Ship Length
%   Aircraft Carrier| AC        | 5
%   Battleship      | B         | 4
%   Destroyer       | D         | 3
%   Submarine       | S         | 3
%   Patrol Boat     | P         | 2
%
%	If any ship is hit in all of its places, then the ship is considered to
%	be sunk.
%
% Notes: 
%   - All ships will be situated so the third output of xlsread() will be a
%     10x10 cell array. 
%   - All ships will be placed horizontally or vertically. 
%   - All moves will be given in the following format '<letter><number>'
%     Ex: C9
%
% Test Cases: 
%   filename = 'battleship_board.xls';
%
%   out1 = battleship({}, filename);
%   	out1 => {}
%   	Output file looks like 'battleship_soln1.xls'
%   
%   moves = {'A1', 'A2', 'A3', 'E2', 'I2', 'J2', 'H10', 'I10', 'J10'};
%   out2 = battleship(moves, filename);
%   	out2 => {'Destroyer', 'Patrol Boat'};
%   	Output file looks like 'battleship_soln2.xls'
%   
%   moves = {'A1', 'A3', 'A7', 'A10', 'B2', 'B4', 'B5', 'B6', 'B7', ...
%               'B10', 'C1', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C10', ...
%               'D1', 'D2', 'D10', 'E2', 'E7', 'E10', 'F1', 'F2', 'F5', ...
%               'G1', 'G2', 'G4', 'G5', 'G10', 'H1', 'H2', 'H5', ...
%               'I2', 'I4', 'I7', 'I10', 'J1', 'J4', 'J5', 'J6', 'J7'};
%   out3 = battleship(moves, filename);
%   	out3 => {'Aircraft Carrier', 'Battleship', 'Submarine'};
%		Output file looks like 'battleship_soln3.xls'
%
%==========================================================================
% PROBLEM 6.  Reading a CSV File Using Low-level File I/O
%--------------------------------------------------------------------------
%
% Function Name: LLcsvread
% Inputs  (1): - (char) Name of a csv file containing various data
% Outputs (1): - (cell) A cell array where each comma separated value
%                       is its own cell
%
% Function Description:
%   In MATLAB, we've learned the built-in csvread function, which reads in
%   numeric data from a comma separated value file and outputs the numeric
%   data in an array. However, csvread cannot handle files with non-numeric
%   data. Write a function called "LLcsvread" that will take in a csv file
%   and return all the data from the file as strings in a cell array. 
%   Numbers may appear in the csv data, but they should be kept as strings.
%
%   The layout of the data in the text file should be preserved in the cell
%   array. Data appearing on the second line of the csv file, for
%   instance, should appear in the second line of the cell array. You may
%   need to use empty cells to complete a square cell array.
%
% Notes:
%	- You may NOT use the xlsread() function.
%
% Test Cases:
%   a = LLcsvread('textcsv1.csv')
% 		a=>   {'This'  ,'is'   ,'Jimmy';
%              'Go'    ,'ahead','commander';
%              'Fire'  ,'it'   ,'up';
%              'Direct','my'   ,'wrath';
%              'beep'  ,'beep' ,'beep'}
%   b = LLcsvread('textcsv2.csv')
%       b=>   {'From','the'   ,'Shadows'     ,'I'  ,'Come'; 
%              ' I'  ,' will' ,' comply'     ,'=3' ,[];
%              'I'   ,'strike','from'        ,'the','shadows';
%              'I'   ,'am'    ,'the darkness',[]   ,[]}
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
%