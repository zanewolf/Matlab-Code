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

diff = (meas - acpt)
pctdiff = 100 .* diff ./ acpt


