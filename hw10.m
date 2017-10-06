%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw10
% Course       : CS1371
% Instructor   :Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: I worked on the homework assignment alone, visitng the CS help 
%                   lab once for coloringCampanile.
%               
%
% Files provided with this homework:  
%   - hw10.m
%   - createBST.p
%   - coloredCampanile_testcase1.png
%   - coloredCampanile_testcase2.png
%   - coloredCampanile_testcase3.png
%   - rotateLines.p
%   - ABCs_recursion.m
%   - ABCs_plotting.m
%   - ABCs_plotting_soln.png
%
% Files to submit:
%   - hw10.m
%   - ABCs_recursion.m
%   - ABCs_plotting.m
%   - derangement.m
%   - hanoi.m
%   - recursiveBoxedIn.m
%   - searchTree.m
%   - coloredCampanile.m
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
%  >> ABCs_pretest_hw10
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
%   11.1 Line Plots
%   9.  Recursion
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.


%==========================================================================
% PROBLEM 1  - Basic Probability
%--------------------------------------------------------------------------
%
% Function Name: derangement
% Inputs (1):  -(double) the amount of objects, n
% Outputs (1): -(double) the number of possible derangements
%             or (char) specifiying an invalid input
% 
% Function Description: 
%   Write a function called "derangement" that calculates the amount of
%   possible derangements for n aount of given objects.
%
%   In probability, a derangement is defined as n objects orded 1...n,
%   mixed up and none of the objects are in the position they started in.
%   For example, if we had 3 objects 1,2,3 and mix them up. The sequence
%   1,3,2 would not be a derangement because the object numbered 1 is in
%   the same spot is started. However, the sequence 3,1,2 is a derangement
%   because all of the objects are in a different position from where they
%   started.
%
%   The notation for a derangement is !n
%
%   The formula for the amount of derangments is: 
%                       !n= (n-1) .* (!(n-1) + !(n-2))
%                          where !1 = 0 and !2 = 1
%
%   Notes:
%   - It is impossible to have a derangment if you don't have an object, so
%   if the input is 0 or less, output the string 'Invalid Input'
%   - You may assume the input will only be integers.
%   - You MUST use recursion to get any credit.
%
% Test Cases:
%   out1 = derangement(-1);
%       out1 => 'Invalid Input'
%
%   out2 = derangement(2)
%       out2 => 1
%
%   out3 = derangement(10)
%       out3 => 1334961


%==========================================================================
% PROBLEM 2.  Towers of Hanoi 
%--------------------------------------------------------------------------
%
% Function Name: hanoi
% Inputs  (1): - (double) The number of discs to be moved 
% Outputs (1): - (double) The number of movements fo move all the discs 
%
% Function Description:
%	Write a function hanoi that recursively calculates the minimum number 
%   of movements necessary to move all the discs from the first pole to
%   the third pole. 
%
%   The Tower of Hanoi is a game with discs and three poles; the goal is to
%   move all the discs from the left-most pole to the right-most pole.
%   Assume that at the beginning of the game, the biggest disc is at the
%   bottom-most, the next big one is on the top of the biggest one, the
%   third biggest one is on the top of the second biggest one, and so on.
%
%   The rules are the following:
%       1. The sizes of discs are all different, and smaller one can be
%       moved only to bigger one.
%       2. You can move only one disc at a time.
%
%   The following is the link to the game if you want to try it out:
%       http://www.mazeworks.com/hanoi/
%
% Constraints:
%	You MUST use recursion to solve this problem.
%
% Hints:
%	Thanks to Computer Scientists and Mathematicians, we have a formula to
%	calculate the minimum number of movements as follows:
%
%           hanoi(0) = 0                      no disc to move
%           hanoi(n) = 2 * hanoi(n-1) + 1     otherwise n number of discs
%
%
% Test Cases:
%
%   a = hanoi(3);
%       a => 7
%
%	b = hanoi(10);
%		b => 1023;


%==========================================================================
% PROBLEM 3.  Think inside the box 
%--------------------------------------------------------------------------
%
% Function Name: recursiveBoxedIn
% Inputs  (1): - (double) an NxM array
% Outputs (1): - (double) the array of containing what is inside the 
%                         smallest "box"
%
% Function Description:
%   Write a function called "recursiveBoxedIn" that takes in an array that
%   may or may not have a "box" of elements surrounded by a ring of 
%   identical numbers. The function should use recursion to return the 
%   array of numbers that are contained within the smallest box. If there 
%   is not a box inside the array, then the function should return the
%   entire array.
%
%   For example:
%
%   array = [7 7 7 7 7;7 2 5 3 7; 7 9 0 2 7; 7 3 1 1 7; 7 7 7 7 7]; 
%          =>        [ 7 7 7 7 7
%                      7 2 5 3 7
%                      7 9 0 2 7
%                      7 3 1 1 7
%                      7 7 7 7 7 ]
%
%   In this case, the 7s acts as the "box", since they make a ring made up
%   of the same number around the array. The function would then return the
%   3x3 array contained within the "box" of 7s.
%  
%   The input array may contain be multiple boxes or none at all. If there
%   are multiple boxes, the function should return whatever is in the
%   smallest box. Any ring surrounding a box will either be the outermost 
%   ring in the array, or it will be immediately surrounded by another ring.
%
%
% Notes: 
%   - You must use recursion to solve this problem.
%   - A 2xN or Nx2 grouping in the center of the array can act as a ring if
%     all the elements are identical. In this case, return an empty vector
%     because the ring encloses nothing.
%   - A 1xN or Nx1 grouping in the center of array should not be considered
%     a ring even if all the elements are identical. If this is the case,
%     return the 1xN or Nx1 vector.
%   - For the last test case below, be sure to use the isempty() 
%     function as shown to test your answer. If your function output 
%     displays as an empty matrix and isempty() returns true, your answer 
%     is correct.
%
% Hints:
%   - The all() and isempty() functions may be useful.
%  
%
% Test Cases:
% 	arr1 = [1 1 1 1 1 1;1 4 4 4 4 1; 1 4 3 5 4 1; 1 4 9 1 4 1; ...
%           1 4 4 4 4 1; 1 1 1 1 1 1];
%  	out1 = recursiveBoxedIn(arr1);
%  		out1 => [3 5; 9 1]
%
%   arr2 = [5 5 5 5 5 5; 5 2 2 2 2 5; 5 2 8 8 2 5; 5 2 2 2 2 5; ...
%           5 5 5 5 5 5];
%  	out2 = recursiveBoxedIn(arr2);
%  		out2 => [8 8]
%
%  	arr3 = [0 7 1 9; 1 9 9 0; 3 1 4 1];
%  	out3= recursiveBoxedIn(arr3);
%  		out3 => [0 7 1 9; 1 9 9 0; 3 1 4 1]
%
%  	arr4 = [3 3 3 3; 3 2 2 3; 3 2 2 3; 3 2 2 3; 3 3 3 3];
%  	out4= recursiveBoxedIn(arr4);
%  		out4 => []
%       isempty(out4) => 1


%==========================================================================
% PROBLEM 4.  Binary Search Trees. 
%--------------------------------------------------------------------------
%
% Function Name: searchTree
% Inputs  (2): - (struct) The BST to search
%              - (double) The data to search for
% Outputs (2): - (logical) True if the data exists in the tree, 
%                          false otherwise
%              - (cell) A cell describing the path taken to find the data
%
% Function Description:
%   Often, when we have large amounts of comparable data, and we want to
%   store it, we will use a data structure called a binary search tree.  A
%   BST has three major properties:
%       1. It is a tree, in that it has a root 'node' that has branches
%       that point to nodes below it, called children.
%       2. It is binary, so each node can only have at most 2 children.
%       3. Nodes to the left of their parent are always less than their
%       parent, and nodes to the right are always greater than their
%       parent.
%
%   Example:
%        8   <-- Root Node
%       / \
%      3   10
%     / \    \
%    1   6    14
%       / \   /
%      4   7 13
%
%   Notice that no mater what node you are at, all nodes on the left branch
%   are less, and all nodes on the right are greater.
%
%   In MATLAB, we can create a BST using structures.  In this case, one
%   structure will represent one node.  Each structure will have three
%   fields, left, right, and data.  Left and right will contain the
%   structures representing the children of this node, or empty vectors if
%   the node has no left or right children.  Data will contain the data of
%   the node.  So if tree is the structure containing the entire tree, then
%   tree.right will contain data only greater than tree.data, and tree.left
%   will have data less than tree.data.
%
%   For this problem, you will write a function that, given a binary tree
%   and a value, will find out if the value is contained in the tree, and
%   return a cell array of the directions used to get to that value.  We
%   have included createBST.p to actually create a BST from a vector.
%
%   For example, if we use the tree above (tree = createBST([8 3 1 6 4 7 10
%   14 13]) as our BST, then after running 
%   [found location] = searchTree(tree, 13)
%   found would be true, since 13 does exist in the tree, and location
%   would be {'right', 'right', 'left'}, as that's the path we took to get
%   to the 13.  
%   If we were to do [found location] = searchTree(tree, 15), found would
%   be false, since 15 doesn't exist in the tree, and location would be
%   {'right', 'right', 'right'}, as that's the path that we went down, and
%   deadended at.
%
% Hints:
%	If you want a more in-depth explanation of a binary search tree,
%	wikipedia's article has a good amount of information on them:
%   http://en.wikipedia.org/wiki/Binary_search_tree
%
%   Please be aware that you are NOT writing the createBST function, it is
%   provided for you for testing purposes.
%
% Test Cases:
%   
%   tree = createBST([4 6 5 8 2 3 1 7]);
%
%   [found location] = searchTree(tree, 4)
%       found => true
%       location => {}
%
%	[found location] = searchTree(tree, 2)
%		found => true
%		location => {'left'}
%
%   [found location] = searchTree(tree, 4.5)
%       found => false
%       location => {'right' 'left' 'left'}


%==========================================================================
% PROBLEM 5. Recursive Plotting
%--------------------------------------------------------------------------
%
% Function Name: coloredCampanile
% Inputs (3):  - (double) the length of the sides of the bottom square
%              - (double) a rotation angle
%              - (char) a string of line colors
%
% Outputs (0): None
%
% Function Description:
%   Write a function called "coloredCampanile" that will draw a campanile
%   given the following parameters:
%   - The first input is the length of the sides of the base of your
%     campanile.
%   - The center of the base should be the origin (x = y = z = 0).
%   - The second input will be an angle in radians by which you should
%     rotate each square counter-clockwise.
%   - You will draw the campanile by drawing squares of decreasing size at
%     increasing heights. Each square will have a side length that is .9
%     times the side length of the square below it, and will be plotted at
%     a distance 1 above the square below it.
%   - You should stop plotting when the side length falls *below* 1.
%   - The third input is a string of color characters that you should
%     scroll through each time you plot a new square. For example, if the
%     string was 'rbk', then the first square should be red, the second
%     should be blue, the third should be black, the fourth should be red,
%     and so on, repeating until the plot ends.
%   - Your figure should have the title 'My Campanile', and the axes should
%   - be labeled as 'x-axis', 'y-axis' and 'z-axis' correspondingly.
%   - You must use axis equal.
%
% Notes:
%	- You *MUST* use recursion for this problem.
%   - The third input is guaranteed to only contain characters that
%     change the *color* of the lines (no stars, dashes, etc).
%   - The third input can have any number of characters and the
%     characters may repeat.
%
% EXTREMELY IMPORTANT NOTE:
%   - You *****MUST***** call "view(3)" at the BEGINNING of your function
%     or your plot may be incorrect. If you choose to ignore this and your
%     function outputs an incorrect plot because of it, then we will NOT
%     accept your regrade request.
%
% Hints:
%	- You may find the included rotateLines.p file helpful in rotating your
% 	  x and y-coordinates.
%   - You may find one or more helper functions extremely useful in solving
%     this problem.
%
% Test Cases:
%
%   PLEASE READ THE "EXTREMELY IMPORTANT NOTE" ABOVE BEFORE RUNNING YOUR
%   TEST CASES
%
%     coloredCampanile(10, 0, 'rkbgcym'); % No rotation, but colorful
%         => Your result should look like coloredCampanile_testcase1.png
%
%     coloredCampanile(10, pi/32, 'b');
%         => Your result should look like coloredCampanile_testcase2.png
%
%     coloredCampanile(15, pi/45, 'kg');
%         => Your result should look like coloredCampanile_testcase3.png
%


%==========================================================================
% FINISHED!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
