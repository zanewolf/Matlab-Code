% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ret = ABCs_recursion(in1, in2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Recursion
%
% This is a multi-part problem. Do each of the parts below. 
%
% DO NOT CHANGE THE FUNCTION HEADER (the first line of code)
%
% This ABC file will step you through writing your first recursive
% function.  You will write a function to determine the greatest common 
% denominator (GCD) of two numbers. We will first write a wrapper function 
% to handle input, then the recursive function.
%
% 	Input  (2): - in1 - a positive integer or zero
%               - in2 - a positive integer or zero
%   Output (1): - ret (double) the GCD of the two inputs
%
% The GCD of any two numbers is the largest integer that can be evenly
% divided by both numbers, thus leaving no remainder. For example:
%               gcd(15, 5) = 5 gcd(13, 2) = 1

% A common method to finding the GCD is using the Euclidian method. To use
% this, you set up three columns, X, Y, and Remainder. The X column should
% contain the larger input value. The Y column should contain the smaller
% input value. The mod() function will be used to get the remainder. Once
% the remainder is zero, then the corresponding Y value is the GCD.

% Consider the following example of computing the GCD of 110 and 85.
%                       X     Y    Remainder 
%                      110    85       25 
%                       85    25       10 
%                       25    10        5
%                       10     5        0   <---- Here the GCD is 5

% PART 1: The wrapper function
%
% In the following code, replace the question marks with the proper code.
% If either input is zero, the output should be the maximum of the two
% inputs. Therefore if both inputs are zero, then the output will be zero.

X = max(in1, in2); %First we need the maximum of the inputs to be X
Y = min(in1, in2); %The minimum of the inputs needs to be Y
if X==0|Y==0 %Case when either input is zero
ret = X; % X corresponds to the maximum of the inputs
else
 % Make your call to GCD, the recursive function, using the 
% variables X and Y
ret = GCD(X,Y);
end
end



function out = GCD(X, Y)

% PART 2: The recursive function

% Terminating Conditions.  Every recursive function will have at least one
% terminating condition.  A terminating condition is a condition such that
% the output is known for a given input without the function having to call
% itself recursively.
%
% Recursive calls.  After we've determined that our input does not satisfy
% a termination condition, we're left with no choice but to call our
% function again to find our output. Remember that the input to your
% recursive function should move towards the terminating condition(s).

remainder = 0;
if Y==0 % What is the terminating condition?
out = X;
else
    remainder=mod(X,Y);
    X=Y;
    Y=remainder;
    
% We do not have a terminating condition, so use a recursive call to
% GCD to determine the output. Make sure that at least one of the
% inputs is moving towards the terminating condition.
out = GCD(X,Y);
end
end

