function [ iamOCD ] = sortFieldnames( whataMess )
if length(whataMess)==1 %just to make sure the length is one
    a = fieldnames(whataMess); %obtains the fieldnames
    b = sort(a); %organizes the field names alphabetically
    for x=1:length(b') %runs through x for the number of cells in b. 
        dust = whataMess.(b{x}); %finds the value of field in orginal structure
        mop.(b{x}) = dust; %creates a field with the corresponding name
        %and assigns the value from the original structure
    end
end
iamOCD = mop; %sets final variable
%
% Function to take in a structure, organize the field names alphabetically,
% and then to create a new structure with the alphaetical fields containing the 
% correct values. 
% Usage: function [ iamOCD ] = sortFieldnames( whataMess ) 
end

