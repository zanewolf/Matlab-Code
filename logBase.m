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
function [mylog] = logBase (targetnumber, base)
mylog = log(targetnumber) ./ log(base);
% function to write a log with a base chosen by user, not by matlab
% usage: mylog = log(targetnumber) ./ log(base);
end

