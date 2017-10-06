% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [csvArray xlsNum xlsText xlsRaw E dlmArray] = ABCs_HighLevelFileIO(csv1, dlm1, dlm2, xls1, xls2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of High Level File I/O
%
%
% Directions:
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 
%
% Given Input Variables:
%   1. csv1 - Given comma separated value (.csv) file 
%   2. dlm1 - Given delimited (.dlm) file 
%   3. dlm2 - .dlm file name to write to
%   4. xls1 - Given excel (.xls) file 
%   5. xls2 - .xls file name to write to
% Note: All files input variables will be in the format  
% i.e.: csv1 = 'file.csv'

% a) Reading comma-separated files. Read in the values of csv1 and assign
% to variable csvArray.
csvArray=csvread(csv1);

% b) Writing comma-separated files. Write the even columns of csvArray to
% a new file called 'csv2.csv'.
b= csvArray(2:2:end);
csvwrite('csv2.csv', b);


% c) Reading an Excel worksheet. Read in an Excel file whose filename is
% given as an input to this function in xls1.  Store the resultant outputs
% in (xlsNum), (xlsText), and (xlsRaw).
[xlsNum xlsText xlsRaw]=xlsread(xls1);

% d) Writing Excel files. Write the xlsText data to xls2.

xlswrite(xls2, xlsText);

% e) Will the data originally written in xls2 be overwritten from step d)?
% Answer true if yes, answer false if no. (E)
E=true;

% e) Reading a delimited text file. Read in the values of dlm1 that is
% delimited with the character '*'. (dlmArray)
dlmArray=dlmread(dlm1', '*');

% f) Writing a delimited text file. Write a copy of dlmArray that is
% delimited with '!'. (dlm2)
dlmwrite(dlm2, dlmArray, '!');


end
