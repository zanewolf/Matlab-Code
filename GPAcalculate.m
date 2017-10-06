% Function Name: GPAcalculate
% Inputs  (4): - (double) a 1xN vector of course numbers
%              - (double) a 1xN vector containing the number of hours 
%                         relevant to each course
%              - (double) a 1xN vector of corresponding grades on a scale
%                         from 0 to 100
%              - (double) a class level for which to find the GPA (1000,
%                         2000, 3000, 4000 level, etc.)
% Outputs (1): - (double) GPA of the requested class level
%
% Function Description:
%   Since 1927, George P. Burdell has taken classes at Georgia Tech every 
%   semester, and has even earned a few degrees. Given several input
%   vectors containing the course numbers, hours of credit, and numerical
%   grades earned by George P. Burdell for just a handful of the classes he
%   took here at Tech, write a function called "GPAcalculate" that
%   calculates his overall grade point average on a 4.0 scale for all
%   classes of a specified class level (i.e. 1000, 2000, 3000 etc.).
%   
%   Grade point averages, or GPAs, are assigned to each class
%   you receive based on your letter grade in the class.
% 
%         Numeric Grade | Letter grade | GPA
%          90 or above  |      A       |  4
%          80-89.999... |      B       |  3
%          70-79.999... |      C       |  2
%          65-69.999... |      D       |  1
%          Below 65     |      F       |  0
%
%   To determine your overall GPA, the GPA of each course is multiplied by
%   the number of credit hours each course is worth. These are then
%   summed and divided by the total number of hours attempted.
%
% Notes:
% 	- All class levels are indicated by a number divisible by 1000.
%   - There will not be a class in the courses vector that is below
%     1000-level, and there will not be a class in the courses vector
%     higher than 9000-level, similar to the GT course listing.
%
% Hints: 
%   - Use the courses vector and logical operations to index grades
%     and hours. You'll need more logical indexing to turn grades into
%     GPAs. You then have the data you need to calculate the weighted 
%     mean. 
function [ wantedGPA ] = GPAcalculate (coursenumbers, coursehours, grades, classlevel)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
grades (grades<65)=0; %this and the following four lines of code are 
%designed to index certain values in the grades vector and assign 
%corresponding GPA grade values to those numbers
grades(grades>=65 & grades<=69.999)=1;
grades(grades>=70 & grades<=79.999) = 2;
grades ( grades>=80 & grades<=89.999)=3;
grades (grades>=90) = 4;
coursenumbers = (floor(coursenumbers ./1000) .* 1000); %this line is 
%designed to round each course level down to its base level. I.e., 1760
%will become 1000. 
wantedClasses = coursenumbers==classlevel; %this creates a logical vector 
%indicated which positions contain coursenumbers corresponding to the
%desired class level for the GPA calculation
wantedgrades = grades(wantedClasses); %this pulls out the grades 
%corresponding to the positions of the classes whose GPA we want to
%calculate. 
wantedGPA = (sum(wantedgrades .* coursehours(wantedClasses)))./ (sum(coursehours(wantedClasses))); 
%the above line calculates GPA by multiplying the wanted grades by the
%corresponding class hours, summing that vector, and then finally dividing
%that value by the sum of all the course hours taken (the same hours which
%correspond to the wanted grades). 
end

