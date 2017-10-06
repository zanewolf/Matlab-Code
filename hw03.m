%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : HW03
% Course       : CS 1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Stella Kinnaird
% Section      : D01
% Collaboration: I worked on the homework assignment alone, for the most
%                part, referencing the computer science help desk once. 

% Files provided with this homework:
%   - hw03.m
%   - ABCs_vectors.m
%   - ABCs_pretest_hw03.p
%
% Files to Submit:
%   - hw03.m
%   - myFind.m
%   - allMixedUp.m
%   - stretchVec.m
%   - barrelShift.m
%   - slopeFinder.m
%   - GPAcalculate.m
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
%       - ABCs_vectors.m
% ABCs File Testing:
%       - Run ABCs_pretest_hw03.p: ABCs_pretest_hw03()
%
%==========================================================================
% PART 2.  Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic:
%   3.1-3.6. Vectors
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
% http://www.youtube.com/watch?v=fqcn_TPu4qQ
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
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
%
% Test Cases:
%   [spots non_nums] = myFind([2 4 2 8 4 2 2], 2);
%	spots => [1 3 6 7]
%	non_nums => [4 8 4]
%
%   [spots non_nums] = myFind(2:3:14, 7);
%	spots => [] or Empty matrix: 1-by-0
%	non_nums => [2 5 8 11 14]
%
%   [spots non_nums] = myFind([7 7 7 7 7], 7);
%	spots => [1 2 3 4 5]
%	non_nums => [] or Empty matrix: 1-by-0
%
%==========================================================================
% PROBLEM 2.  Sir Mix-a-Lot
%--------------------------------------------------------------------------
%
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
%
% Test Cases:
%   mixed1 = allMixedUp([1 2 3 4 5],[6 7 8 9 10]);
%       mixed1 => [1 6 2 7 3 8 4 9 5 10]
%
%   mixed2 = allMixedUp([5 1 5 9 1], [4 1 3]);
%       mixed2 => [5 4 1 1 5 3 9 0 1 0]
%
%   mixed3 = allMixedUp([8 6 7], [5 3 0 9];
%       mixed3 => [8 5 6 3 7 0 0 9]
%
%==========================================================================
% PROBLEM 3.  Stretching and Compressing Vectors
%--------------------------------------------------------------------------
% 
% Function Name: stretchVec
% Inputs  (2): - (double) a vector
%              - (double) a scalar value by which the vector should be
%						  stretched or compressed
% Outputs (1): - (double) the new vector
%
% Function Description:
%   Write a function called "stretchVec" that takes in a vector with at
%	least one element and a value by which the vector should be stretched
%	or compressed and outputs the new vector. If the stretch value is
%	greater than 1, then the vector should be stretched by adding duplicate
%	elements. If the value is less than 1, then the vector should be
%	compressed by removing elements. If the value is *EXACTLY* 1, then no
%	change should be made to the vector. For example, if:
%
%		vec = [0 1 1 2 3 5 8 13]
%		scalingFactor = 2
%
%	then the resulting vector would be stretched by a factor of two by
%	adding duplicate elements, i.e.
%
%		newVec => [0 0 1 1 1 1 2 2 3 3 4 4 8 8 13 13]
%
%	but if scalingFactor = 1/2, then it would be compressed by a factor
%	of 2 by removing elements, i.e.
%
%		newVec => [0 1 5 13]
%
% Notes:
%   - The input vector is guaranteed to contain at least one element.
%	- You should use the round() function to determine the number of
%	  elements in the final vector.
%
% Hints:
%	- You may find the linspace() and round() functions in conjunction
%	  with numerical indexing useful in solving this problem.
%
% Test Cases:
%   nvec1 = stretchVec([1 5 4 8 9], 1.5);
%       nvec1 => [1 5 5 4 4 8 8 9]
%	**Note that in this case 5*1.5 = 7.5, which rounds to 8, so there
%	  should be 8 elements in the final vector**
%
%   nvec2 = stretchVec(2:3:20, 0.75);
%       nvec2 => [2 8 11 17 20]
%
%   nvec3 = stretchVec([1 2 4], 1.01);
%       nvec3 => [1 2 4]    % This is okay, because a stretch factor of
%                           % 1.01 on a 3 element vector is insignificant.
%
%==========================================================================
% PROBLEM 4.  Do a Barrel Roll! 
%--------------------------------------------------------------------------
%
% Function Name: barrelShift
% Inputs  (2): - (double) a row or column vector
%              - (double) the number of times to shift the vector
% Outputs (1): - (double) the shifted row or column vector
%
% Function Description:
%   Write a function called "barrelShift" that takes in a vector and the 
%   number of times the vector is shifted. The function will output the 
%   vector shifted by the number of times indicated by the second input.
%
%   Here is an example of barrel shifting:
%	If you have a vector [1 2 3 4 5], it will look like this after you
%	barrel shift it:
%
%   1 time:  [5 1 2 3 4]
%   2 times: [4 5 1 2 3]
%   3 times: [3 4 5 1 2]
%   4 times: [2 3 4 5 1]
%   5 times: [1 2 3 4 5]
% 
%   Basically, every time you do one barrel shift, the vector is shifted to
%   the right and the number at the end is moved to the front. This process
%   is repeated for the number of shifts specified. If the number of shifts
%   is negative, then the vector should be barrel shifted to the left
%   instead of the right. 
%
% Notes:
%   - Both row and column vectors can be inputs to this function.
%   - If the number of shifts is zero, then the function should return 
%     the original vector. 
%
% Hints: 
%   - If you try to index out of a vector's length or index with a
%     negative number, it will produce an error.
%   - You may find the mod() function useful. 
%
% Test Cases:
%   out = barrelShift([6; 9; 15; -2; 11; 0; 8],3);
%       out => [11
%                0
%                8
%                6
%                9
%               15
%               -2]
%
%   out = barrelShift([2 9 15 0],5);
%       out => [0 2 9 15]
%
%   out = barrelShift([11 -34 6 19 10],-2);
%       out => [6 19 10 11 -34]
%
%   out = barrelShift([5 15 19 91]',0);
%       out => [5 15 19 91]'
%
%==========================================================================
% PROBLEM 5.  Finding a Vector of Slopes
%--------------------------------------------------------------------------
%
% Function Name: slopeFinder
% Inputs  (2): - (double) a row vector denoting a set of x-coordinates
%              - (double) a row vector denoting a set of y-coordinates
% Outputs (1): - (double) a row vector of the slopes between each
%                         coordinate if they were linearly interpolated
%
% Function Description:
%   Write a function called "slopeFinder" that takes in a vector of
%   x-coordinates and another vector of corresponding y-coordinates. The
%   function should then find the slope between each adjacent coordinate
%   pair assuming the two coordinates are connected by a straight line. For
%   example, if x-coordinate values are x = [1 2 3 4 5] and y-coordinate
%   values are y = [1 1 2 3 8], then find the first index of the output by
%   applying the slope formula ("rise over run") to the first two indices
%   of the x and y vectors to find that m = (1 - 1)/(2 - 1) = 0. To find
%   the second index of the output, apply the slope formula to the second
%   and third index of the x and y vector, so m2 = (2 - 1)/(3 - 2) = 1.
%   Proceed to find any and all remaining slopes until you get to the last
%   pair in the input row vectors.
%
% Notes:
%   - There will always be at least two numbers in both input row vectors.
%   - You may assume that the two input vectors have the same length.
%   - You may also assume that no two consecutive indices of the x-vector
%     are the same number, i.e. do not worry about infinite slopes.
%   - You may *NOT* use the diff() function.
%   - You may *NOT* use iteration.
%
% Hint:
%   - If done correctly, the output vector should be one element shorter
%     than the input vectors.
%
% Test Cases:
%   Your output numbers may contain four decimal places. This is okay;
%   extra zeros are omitted here for convenience. Any extra zeros at
%	the ends of your decimal values will NOT cause you to lose points.
%
%   slopes1 = slopeFinder([1 2 4 5 6], [2 6 8 5 3]);
%       slopes1 => [4 1 -3 -2]
%
%   slopes2 = slopeFinder([2 4 5 6 7 8 11],[1 8 -9 10 -5 -6 -7]);
%       slopes2 => [3.5 -17 19 -15 -1 -0.3333]
%
%==========================================================================
% PROBLEM 6.  Calculating GPA
%--------------------------------------------------------------------------
%
% Function Name: GPAcalculate
% Inputs  (4): - (double) a 1xN vector of course numbers
%              - (double) a 1xN vector containing the number of hours 
%                         relevant to each course
%              - (double) a 1xN vector of corresponding grades on a scale
%                         from 0 to 100
%              - (double) a class level for which to find the GPA (1000,
%                         2000, 3000, 4000 level, etc.)
% Outputs (1): - (double) GPA of the requested class level
%
% Function Description:
%   Since 1927, George P. Burdell has taken classes at Georgia Tech every 
%   semester, and has even earned a few degrees. Given several input
%   vectors containing the course numbers, hours of credit, and numerical
%   grades earned by George P. Burdell for just a handful of the classes he
%   took here at Tech, write a function called "GPAcalculate" that
%   calculates his overall grade point average on a 4.0 scale for all
%   classes of a specified class level (i.e. 1000, 2000, 3000 etc.).
%   
%   Grade point averages, or GPAs, are assigned to each class
%   you receive based on your letter grade in the class.
% 
%         Numeric Grade | Letter grade | GPA
%          90 or above  |      A       |  4
%          80-89.999... |      B       |  3
%          70-79.999... |      C       |  2
%          65-69.999... |      D       |  1
%          Below 65     |      F       |  0
%
%   To determine your overall GPA, the GPA of each course is multiplied by
%   the number of credit hours each course is worth. These are then
%   summed and divided by the total number of hours attempted.
%
% Notes:
% 	- All class levels are indicated by a number divisible by 1000.
%   - There will not be a class in the courses vector that is below
%     1000-level, and there will not be a class in the courses vector
%     higher than 9000-level, similar to the GT course listing.
%
% Hints: 
%   - Use the courses vector and logical operations to index grades
%     and hours. You'll need more logical indexing to turn grades into
%     GPAs. You then have the data you need to calculate the weighted 
%     mean. 
%
% Test Cases:
%   courses = [3110 1371 3300 1502 1300 6440 4415 2210 2400 3400,...
%              3610 4112];
%   hours = [2 3 4 4 3 4 3 4 3 4 3 3];
%   grades = [97.523 70.40 80 79.299 86.59 89.999 90 100 84.5 64,...
%             65 81.01];
%
%   gpa1 = GPAcalculate(courses,hours,grades,2000);
%   	gpa1 => 3.5714
%
%   gpa2 = GPAcalculate(courses,hours,grades,3000);
%       gpa2 => 1.7692
%
%   gpa3 = GPAcalculate(courses,hours,grades,6000);
%       gpa3 => 3
%
%==========================================================================
% FINISHED!
%--------------------------------------------------------------------------
% 
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
