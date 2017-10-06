%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw11
% Course       : CS1371
% Instructor   : Smith
% Lecture Time : MWF  4:00
% TA's Name    : Prahaba Viswanathan
% Section      : D01
% Collaboration: 
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 
% Files provided with this homework:  
%   - hw11.m
%   - myOrbit.m
%   - testOrbit.p
%   - starting_orbits.png
%   - orbits_rubric.pdf
%
% Files to submit:
%   - hw11.m
%   - myOrbit.m
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%==========================================================================
% PART 1. Drill Problems
%--------------------------------------------------------------------------
%%
%==========================================================================
% PROBLEM 1.  Creating an Animation with MATLAB!
%--------------------------------------------------------------------------
%
% Function Name: myOrbit
% Inputs  (0):
% Outputs (0):
% Output Plots (1): an animation of a spaceship traveling toward a planet
%
% Helper Function Name: rotate.m
% Inputs  (1): the angle by which to rotate points.
% Outputs (3): the new x, y, and z points after being rotated by the given
%              angle.
%
% Note: This is a built-in function in MATLAB. You can call 'help rotate'
% for further details. 
%                   
%% Function Description:
%
%   Please Read The Entire Description Before Starting This Homework!
%   
%   This homework is a little different than the homeworks that you have
%   done before. Instead of having many problems to solve with different
%   functions, you will create one function (with a helper function) that
%   uses bodies of rotation, surface plotting, rotations, and line plots to
%   animate a scene of a spaceship flying toward a planet in MATLAB.
%
%   Because this is a significant challenge, skeleton code has been
%   provided for you. This skeleton code contains a few concepts that are
%   not explicitly taught in this class or that are specific to making the
%   animation work properly and follow rubric guidelines. These lines are
%   designated by:
%
%%  % DO NOT modify these lines -------------------------------------------
%   <code block>
%   % ---------------------------------------------------------------------
%%
%   As the name suggests, you should not modify this code unless you are
%   feeling exceptionally daring and would like to experiment. If you do
%   choose to modify this code and your solution no longer works,then you
%   should redownload the skeleton code and either fix whatever is broken
%   or use the "undo" function if you recently changed things.
%
%	This homework is also different in that it gives you a chance to be
%	creative. The entire homework will be hand-graded by your section TA
%	so if you go above and beyond what the problem statement specifies,
%   then there is potential for up to 20 points extra credit.
%
%% Detailed Instructions
%
%   The purpose of this problem is to create a stationary planet with rings
%   in the background and a spaceship in the foreground, then modify the
%   spaceship in such ways that it will appear to be flying toward the
%   planet when running the program. 
%
%   To see a general idea of what we're looking for, you can call run the 
%   p-file testOrbit from the command window to run the animation. 
%
%   Specifics:
%    - The planet should be a spherical surface plot.
%
%    - The rings should be circular and drawn with simple line plots.
%
%    - The ship should start as a body of rotation around the z-axis.
%
%    - To create the orbit:    
%       - Since the spaceship is made of points, we can only modify
%         those points to make the spaceship "move". The modifications that
%         we will make to simulate an orbital motion are:
%           1. Rotation about the y-axis to change the ship's orientation.
%           2. Addition/subtraction to change the (x, y, z) coordinates of
%              the ship. If we change these coordinates along a circular
%              path, then we can make it look like the ship is orbiting the
%              planet.
%           3. Multiplication to make the ship shrink or grow. If done
%              correctly, then we will not need to change the y-coordinate
%              because the size change will make it look like the ship is
%              getting further away.
%
%   If you open myOrbit.m file, you will find a skeleton code to help with 
%   the actual coding. The following is a more detailed walk-through that
%   aligns with the comments and code inside this file.
%
%%	PARTS 1-3: Defining Variables
%	
%	1. You will first need to define the variables to help you draw your
%	   planet. To make a spherical planet, and MATLAB contains a function
%	   called sphere() that will generate coordinates to plot a sphere. The
%	   sphere() function generates a sphere with radius equal to one, so if
%	   you want to make your planet bigger than that, then you'll need to
%	   adjust the x, y, and z coordinates. You will probably also want to
%	   put your planet further away from the screen than it would be at (0,
%	   0, 0) (which was done in the testOrbit.p file), so you'll need to
%	   adjust those points as well.
%
%	2. Next, you'll need to define the variables to help you draw the
%	   planet's rings. The rings are created using simple line plots. You
%	   should use at least 3 colors to receive full credit. 
%
%	3. Finally, you will need to generate the points that will be used
%	   to create the spaceship and its orbit. The spaceship should be
%	   created using a body of rotation. You are free to make the spaceship
%	   any shape you like, however, it should still be recognizable as a
%	   flying space craft, such as a flying saucer or rocket. You should
%	   rotate your 2-D design around the z-axis. Just as you defined
%	   coordinates for the planet, you should also define starting
%	   coordinates for the ship. A good starting point for this would be
%	   the planet location. You can then change the z-coordinate to make
%	   the ship start closer to the screen than the planet does. This way
%	   the ship and the planet are in the same plane, making it easier to
%	   create the orbit. You should make the orbit radius large enough so
%	   that the ship does not crash into the planet.
%
%%	PARTS 4-6: Iterate With the Drawings to Create an Animation
%
%   4. Now it is time to draw the rings. You will probably want to do
%	   this inside of a for loop so you can draw all of the rings without
%	   using a large number of plot commands. Note that you will need to
%	   use plot3() because we are plotting in 3-dimensional space.
%	   You should call "hold on" after the first plot command so all of
%	   the rings get drawn on the same plot. Consider having
%      a string of color values you want and using the loop variable to
%      alternate the colors. Rings will need to be drawn before the planet
%      to work correctly.
%
%	5. You should now plot the sphere for the planet. This should be
%	   fairly straightforward after defining all your variables in Part 1.
%	   You will want to change the axes so that the ship and planet are
%	   visible the entire time. Turn the axes off as well to give an
%	   unobstructed view of the animation.
%
%	6. You should now rotate the ship's points by the current angle by
%      using the "rotate" function and adjust the ship's coordinates to
%      make it look like the ship is moving. Next, you should define and
%      use a scale factor to make the ship get smaller and appear as if it
%      is moving toward the planet with each passing frame. Finally, use
%      the ship's original points, the scale factor, and the current orbit
%      coordinates to plot the ship.
%
%   An example of the first frame can be found in "starting_orbits.png".
%
%%	PART 7: Using the Rotate Function
%
%	7. First you will need to define the rotation matrix to rotate points
%	   about the y-axis in 3 dimensions. Next, multiply the rotation matrix
%	   that you just defined by the ship's points given in the variable
%	   "shipPts". If you get a "matrix dimensions do not agree" error, then
%	   try swapping the matrices' positions in the multiplication.
%
%
%% Grading Scheme:
%   The grading rubric is included as "orbits_rubric.pdf".
%
% What's this extra credit about?
%   Extra credit will be awarded by your TA based on how many creative
%   additions you make to the animation. You must include a statement at
%   the bottom of your file (below all of the code) detailing the additions
%   that you made or saying that you did not make any additions in order
%   for you to be eligible for extra credit. *The TAs will not responsible
%   for helping you to implement any extra credit additions!* This gives
%   you a chance to be creative and allows TAs to help others who need help
%   with the frame work of the problem.
%
% Some example additions could include:
%   - Creating a elaborate spaceship shape. Perhaps create a flying saucer
%     instead of a ship, or add a flame to the engine.
%   - Do something interesting with the rings. You can have different size
%     rings, interesting patterns, or use a random number generator to
%     change the size of the rings with the animations, causing a 'winking'
%     effect.
%   - MATLAB has a few built in functions that allow you to change the
%     background colors of figures. Consider changing the color to be more 
%     representative of space, or adding a few stars.
%
%% GOOD LUCK! 
%  Be creative! We look forward to seeing what you come up with! 