%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : R. Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : HW02
% Course       : CS 1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Stella Kinnaird 
% Section      : D01
% Collaboration:   I worked on this homework with Taylor Grant.
%
%
% Files provided with this homework:
%   - hw02.m
%   - ABCs_functions.m
%   - ABCs_pretest_hw02.p
%   - drill.jpg
%
% Files to Submit:
%   - hw02.m
%   - ABCs_functions.m
%   - percentDifference.m
%   - logBase.m
%   - compareTips.m
%   - probability.m
%   - roadTrip.m
%   - paintRoom.m
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
% Part of this homework is a m-file called ABCs_functions.m. Open this file
% in MATLAB and complete it according to the directions contained within.
%
% Once you are done, you can test your ABC file by running 
% ABCs_pretest_hw02() in the command window. Alternatively, you can 
% right-click the file in the Current Directory window and click 
% "Run File".  You cannot run or open the file by double clicking it. If 
% you have problems running ABCs_pretest_hw02.p, then you might need a 
% newer version of MATLAB. The pretests are guaranteed to run on any
% Georgia Tech Campus Computers, specifically the ones located in the CS
% 1371 Help Desk. 
%
% Files to Complete: 
%       - ABCs_functions.m
% ABCs File Testing:
%       - Run ABCs_pretest_hw02.p: ABCs_pretest_hw02()
%
%==========================================================================
% PART 2.  Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic:
%   6. Functions
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will receive
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers). Any scripts turned in will be given a 0 automatically. Refer 
% to drill.jpg as a guide to reading and understanding drill problems.
%
% In this assignment, the drill problems will consist of simple 
% math/logic problems. All calculations should be done using MATLAB code.
% Do not compute any answer outside of MATLAB and then manually set the
% variable to the solution value. 

%==========================================================================
% Testing Your Functions
%--------------------------------------------------------------------------
%
% Since functions require inputs be fed to them, you will find that testing
% them is a little more complicated than just hitting F5. To test your
% functions, you will have to call them from the command line and give them
% appropriate inputs. If your function has more than one output and you
% want to view all of these outputs, you must assign all of these outputs
% to different variables. Use the test cases provided and remember to
% always check your work space for variable values. To uncomment blocks of
% code, highlight the lines and press CTRL+T. You can then run highlighted
% blocks of by pressing F9. Additionally, you can create a test script with
% the different test cases and run the entire script. Again, always check
% the workspace and NOT the command window when comparing variables. 
%
%==========================================================================
% Homework Video of the Week
%--------------------------------------------------------------------------
% 
% http://www.youtube.com/watch?v=gjSZ1k4hT3U
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PROBLEM 1.  Finding the Percent Difference Between Two Numbers
%--------------------------------------------------------------------------
%
% Function Name: percentDifference
% Inputs  (2): - (double) the "measured" value of a parameter
%              - (double) the "accepted" value of the same parameter
% Outputs (1): - (double) the percent difference between the "accepted" and
%                         "measured" values of the parameter
%
% Function Description:
%   Write a function called "percentDifference" that takes in two numbers:
%   the "measured" value of a parameter (the specific parameter is
%   irrelevant here) and the "accepted" value of that parameter. The
%   function should then calculate the percent difference between the two
%   values as given by the following formula:
%
%   PE = 100 .* (MEAS - ACPT) ./ ACPT
%
%       PE: percent error
%       MEAS: measured value
%       ACPT: accepted value
%
%   The function should then output the percent difference as a single
%   number. The number should be represented as a percentage (e.g. 25.2),
%   *NOT* a decimal (e.g. 0.252).
%
% Notes:
%   - The accepted value will never be zero.
%
% Test Cases:
%   pd1 = percentDifference(22.19, 23.52);
%       pd1 => -5.6548
%
%   pd2 = percentDifference(1.6791, 1.0091);
%       pd2 => 66.3958
%
%   pd3 = percentDifference(3.1415, 3.1415);
%       pd3 => 0
%
%==========================================================================
% PROBLEM 2.  Logs of Many Bases Which Belong to Us
%--------------------------------------------------------------------------
%
% Function Name: logBase
% Inputs  (2): - (double) a number to take the log of
%              - (double) the base of the log to use
% Outputs (1): - (double) the log of the first input with the base of the
%                         second input
%
% Function Description:
%   In MATLAB, the log() function takes the natural logarithm of a number,
%   mathematically written as ln(x) or log base e. Many times, however, we
%   might want to take the log base 10, the log base 2, etc. of a number
%   instead. Since the log() function does not account for this, write a
%   function called "logBase" that takes the log of a given number of a
%   specified base using logarithmic rules and properties. 
%
% Constraints:
%	- The ONLY function you are allowed to use for this problem is log().
%	Don't use any other functions -- you won't need them anyway.
%
% Hints:
%                                       log base e of n
% - Remember that the log base b of n =  ----------------
%                                       log base e of b
%
%   where n is the number you want to take the log of and b is the base.
%
% Test Cases:
%	x = logBase(10, 2)
%      x => 3.3219
%
%   y = logBase(27, 3)
%      y => 3.0000
%
%==========================================================================
% PROBLEM 3.  Tip Before Tax or After?
%--------------------------------------------------------------------------
%
% Function Name: compareTips
% Inputs  (3): - (double) the subtotal of a meal
%              - (double) sales tax percentage
%              - (double) tip percentage
% Outputs (3): - (double) the tip amount before tax
%              - (double) the tip amount after tax
%              - (double) the absolute difference between the two
%
% Function Description:
%   Several TAs were having a discussion about whether its better to tip
%   before tax or after, and what the actual difference in the amount paid
%   is. To solve this problem, write a function called "compareTips" that
%   takes in the subtotal of a meal, the sales tax percentage, and the
%   percentage of the tip and computes the tip before sales tax is applied,
%   after sales tax is applied, and the difference between the two.  The
%   price should be rounded up to the nearest hundredth.
%
% Notes:
%   - Round only after all calculations have been complete, i.e. it should
%     be your last step for all 3 values. 
%   - Percentages will be represented with whole numbers, i.e. 8% will be
%     given as 8. 
%
%  Hints:
%   - You may find the ceil() function useful. 
%   - There is not a function that can round to the nearest hundreth in
%     MATLAB. Instead, think about what happens when you multiply a number
%     by 100 and then round up, and go from there. 
%
% Test Cases:
%	[tipBefore tipAfter difference] = compareTips(23.45, 8, 15)
%      tipBefore  => 3.5200
%      tipAfter   => 3.8000
%      difference => .2900
%
%   [tipBefore tipAfter difference] = compareTips(101.68, 9.75, 20)
%      tipBefore  => 20.3400
%      tipAfter   => 22.3200
%      difference => 1.9900
%
%==========================================================================
% PROBLEM 4.  Apples to Apples
%--------------------------------------------------------------------------
% 
% Function Name: probability
% Inputs  (4): - (double) the number of red apples in a bag
%              - (double) the number of green apples in a bag
%              - (double) the percentage of red apples that are rotten
%              - (double) the percentage of green apples that are rotten
% Outputs (2): - (double) the probability of pulling a non-rotten red apple
%              - (double) the probability of pulling a non-rotten green
%                         apple
%
% Function Description:
%   Write a function called "probability" that takes in four parameters:
%   the number of red apples in a bag, the number of green apples in a bag,
%   the *PERCENTAGE* (e.g. a 25% chance will be entered as the number 25,
%   *NOT* the decimal 0.25) of red apples that are rotten, and the
%   *PERCENTAGE* of green apples that are rotten. The function should then
%   calculate the probability of pulling a non-rotten red apple or a
%   non-rotten green apple from the bag and then output these values as
%   *PERCENTAGES*.
%
% Notes:
%   - You will only be pulling *ONE* apple from the bag, but you will need
%     to calculate the probability of both cases.
%   - The number of rotten apples is guaranteed to be a whole number.
%
% Test Cases:
%   [red1 grn1] = probability(10, 10, 20, 50);
%       red1 => 40
%       grn1 => 25
%
%   [red2 grn2] = probability(35, 2, 80, 0);
%       red2 => 18.9189
%       grn2 => 5.4054
%
%==========================================================================
% PROBLEM 5.  Hit The Road!
%--------------------------------------------------------------------------
%
% Function Name: roadTrip
% Inputs  (4): - (double) the number of miles a car can travel with the
%                         amount of gas given in the second input
%              - (double) the gallons of gas required to drive the number
%                         of miles in the first input
%              - (double) the length (in miles) of a road trip
%              - (double) the price of gas per gallon            
% Outputs (1): - (double) the cost of the amount of gas needed for the road
%                         trip
%
% Function Description:
%   Write a function named "roadTrip" that takes in the number of miles a
%   car can travel with a specified number of gallons of gas, as well as 
%   the length of a road trip and the price of gas per gallon. The function
%   outputs the cost of the amount of gas needed for the trip.  The price
%   should be rounded up to the nearest hundredth.
%
%   Notes:
%   - Do not round any values in the intermediate steps. 
%
%   Hints:
%   - You may find the ceil() function useful.
%
% Test Cases:
%	cost1 = roadTrip(155.36, 5.12, 350, 3.84)
%       cost1 => 44.3000
%
%   cost2 = roadTrip(208, 8, 1009, 3.69)
%       cost1 => 143.2100
%
%==========================================================================
% PROBLEM 6.  Paint Estimator 
%--------------------------------------------------------------------------
%
% Function Name: paintRoom
% Inputs  (5): - (double) one dimension of a rectangular room (in feet)
%              - (double) a second dimension of the room (in feet)
%              - (double) the third dimension of the room (in feet)
%              - (double) the total area (in square feet) of any windows in
%                         the room
%              - (double) the number of coats of paint needed
% Outputs (2): - (double) the number of 5-gallon paint cans needed 
%              - (double) the number of 1-gallon paint cans needed
%
% Function Description:
%   Write a function named "paintRoom" that takes in three dimensions of a
%   rectangular room, the area of the windows in the room, and the number
%   of coats needed to paint the room. The function should calculate the 
%   number of 5-gallon cans of paint and the number of 1-gallon cans of 
%   paint needed to to paint the room (excluding the floor and windows), 
%   assuming one gallon of paint covers 350 square feet. In order to 
%   minimize cost, you should use as many 5-gallon cans as possible without
%   exceeding the total number of gallons needed. Then use 1-gallon cans 
%   for any remaining paint required. If a fraction of a one-gallon can is
%   needed, this number should be rounded up to account for the whole 
%   additional can that must be purchased (i.e. the number of 1-gallon cans
%   must always be an integer).
%
%   Notes:
%   -  The dimensions of the floor will always be the first two inputs.
%   -  The room is not guaranteed to have any windows.
%   -  The number of coats is guaranteed to be a positive integer.
%
%   Hints:
%   -  You may find the ceil(), floor(), and mod() functions helpful.
%
% Test Cases:
%	[bigcans1, galcans1] = paintRoom(30, 20, 30, 800, 2)
%       bigcans1 => 3
%       galcans1 => 1
%
%   [bigcans2, galcans2] = paintRoom(10, 20, 55, 0, 1)
%       bigcans2 => 2
%       galcans2 => 0
%
%   [bigcans3, galcans3] = paintRoom(13, 8, 9, 8, 2)
%       bigcans3 => 0
%       galcans3 => 3
%
%==========================================================================
% FINISHED!
%--------------------------------------------------------------------------
% 
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
