%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : R. Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : HW01
% Course       : CS 1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Stella Kinnaird 
% Section      : D01
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%                
% Files provided with this homework:
%   - hw01.m
%   - CS 1371 HW Guide.pdf
%   - ABCs_homework.m
%   - ABCs_pretest_hw01.p
%
% Files to Submit:
%   - hw01.m
%   - ABCs_homework.m
%   - percentDifference
%   - roadTrip
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name variables exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following commands in files that 
%   will be graded:
%       a) clear
%       b) clc
%       c) solve
%		d) input  
%
%  If you want to use this file for testing your work, remove the comment
%  charcacters from the clear and clc lines below
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
clear
clc
%PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is a m-file called ABCs_homework.m. Open this file
% in MATLAB and complete it according to the directions contained within.
%
% Once you are done, you can test your ABC file by running 
% ABCs_pretest_hw01() in the command window. Alternatively, you can 
% right-click the file in the Current Directory window and click 
% "Run File".  You cannot run or open the file by double clicking it. If 
% you have problems running ABCs_pretest_hw01.p, then you probably need a 
% newer version of MATLAB. The pretests are guaranteed to run on any
% Georgia Tech Campus Computers, specifically the ones located in the CS
% 1371 Help Desk. 
%
% Files to Complete: 
%       - ABCs_homework.m
% ABCs File Testing:
%       - Run ABCs_pretest_hw01.p: ABCs_pretest_hw01()
%
%==========================================================================
% PART 2.  Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic:
%   1. Scripts
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will receive
% an automatic zero for the problem.
%
% In this assignment, the drill problems will consist of simple 
% math/logic problems. All calculations should be done using MATLAB code.
% Do not compute any answer outside of MATLAB and then manually set the
% variable to the solution value. 
%
%==========================================================================
% PROBLEM 1.  Finding the Percent Difference Between Two Numbers
%--------------------------------------------------------------------------
%
% Script Name: percentDifference
%   Variables: meas    (double) the "measured" value of a parameter
%              acc     (double) the "accepted" value of the same parameter
%      Output: pctDiff (double) the percent difference between the
%                       "accepted" and "measured" values of the parameter
%
% Description:
%   Write a script called "percentDifference" that uses two numbers:
%   meas: the "measured" value of a parameter (the specific parameter is
%         irrelevant here) and 
%   acc: the "accepted" value of that parameter. 
%   The script should then calculate the percent difference between the two
%   values as given by the following formula:
%
%   PE = 100 .* (MEAS - ACPT) ./ ACPT
%
%       PE: percent error
%       MEAS: measured value
%       ACPT: accepted value
%
%   The script should then store the percent difference as a single
%   number in a variable named "pctDiff". The number should be represented 
%   as a percentage (e.g. 25.2), *NOT* a decimal (e.g. 0.252).
%
% Notes:
%   - The accepted value will never be zero.
%
% Test Cases:
%
%   meas = 22.19
%   acc = 23.52
%   percentDifference
%       pctDiff => -5.6548
%
%   meas = 1.6791
%   acc = 1.0091
%   percentDifference
%       pctDiff => 66.3958
%
%
%==========================================================================
% PROBLEM 2.  Hit The Road!
%--------------------------------------------------------------------------
%
% Script Name: roadTrip
%   Variables: tankMiles  (double) the number of miles a car can travel
%                          with the amount of gas given in the second input
%              tankSize   (double) the gallons of gas in a tank full
%              miles      (double) the length (in miles) of a road trip
%              pricePerGal(double) the price of gas per gallon            
%      Output: cost       (double) the cost of the amount of gas needed for
%                          the road trip
%
% Script Description:
%   Write a script named "roadTrip" that uses the number of miles a
%   car can travel with a specified number of gallons of gas, as well as 
%   the length of a road trip and the price of gas per gallon. The script
%   calculates the cost of the amount of gas needed for the trip.  
%
% Test Cases:
%	tankMiles = 155.36
%   tankSize = 5.12
%   miles = 350
%   pricePerGall 3.84
%   roadTrip
%       cost1 => 44.29
%
%	tankMiles = 208
%   tankSize = 8
%   miles = 1009
%   pricePerGall 3.69
%   roadTrip
%       cost2 => 143.20
%
%
%==========================================================================
% FINISHED!
%--------------------------------------------------------------------------
% 
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
