% Function Name: compDiffInt
% Inputs (1): - (double) vector of coefficients of polynomial
% Outputs(2): - (double) vector of coefficients of derivative of polynomial
%             - (double) vector of coefficients of integral of polynomial
%


function [ derivco integco] = compDiffInt( coeff )
exp=[0]; %sets the variable
for x=1:length(coeff(1:end-1)) %for all but the last coefficients...
    exp=[exp x]; %record the spot (represents the exponent)
end
nexp=exp(end:-1:2); %because the derivative is one less, index the exp from 
%beginning to the next to last element. 
newc=coeff(1:end-1); %remove the last element so lengths match
derivco=nexp.*newc; %compute the derivate

integco=coeff./(exp(end:-1:1)+1); %take the original coefficients, take the exponents
%plus one (to represent the new exp) and compute the integral coefficients


%compDiffInt takes in a vector representing the coefficients
%of a polynomial and will return to vectors. the first will be
%the coefficients of the derivative and the second will be the 
%the coefficients of the integral. 
%Usage:[ derivco integco] = compDiffInt( coeff )
end

