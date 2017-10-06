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
function [tipBefore, tipAfter, absDiff] = compareTips (subtotal, salesPercentage, tipPercentage)
tipBefore = ((.01 .* tipPercentage) .* subtotal);
tipAfter = ((.01 .* tipPercentage) .* (((.01 .* salesPercentage) .* subtotal) + subtotal));
tipBefore = (ceil(100 .* tipBefore)) ./ 100; %to round up, I multiplied the tips by 100, applied the ceil function to round up to the nearest integer, and divided by 100 again. 
tipAfter = (ceil(100 .* tipAfter)) ./ 100;
absDiff = (tipAfter - tipBefore);
% function to calculate the tip before sales tax is added to the total
% bill, the tip after the sales tax is added to the total bill, and if
% there is actually a difference between the two tip amounts. 
% usage: tipBefore = ((.01 .* tipPercentage) .* subtotal);
% tipAfter = ((.01 .* tipPercentage) .* (((.01 .* salesPercentage) .* subtotal) + subtotal));
% tipBefore = (ceil(100 .* tipBefore)) ./ 100; 
% tipAfter = (ceil(100 .* tipAfter)) ./ 100;
% absDiff = (tipAfter - tipBefore);
end

