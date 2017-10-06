
function [gradesandaverages overachiever] = calcGrades(grades, ids)
yuck = grades==0; %logical index to find the position of yucky grades
[b c] = find(yuck); %finds exact position (row, column) of the yucky grades
grades(b,:) = []; %deletes the corresponding row containing the yucky grade
ids(b,:) = []; %deletes the corresponding ID of the student who made the yucky grade
b = grades'; %transposes the grades array
b = mean(b); %finds the mean of the new transposed columns
average = b'; %reverses the transposition(?)
gradesandaverage = [grades average];%concatenates the studentaverage vector to the grades array
overallaverage = mean(gradesandaverage); %calculates the mean grade for the tests and the student average
gradesandaverages = [gradesandaverage; overallaverage]; %concatenates the grades and the student average array with the overall average vector as a final row
[e f] = max(gradesandaverages(:,end)); %locates the max of the student averages
overachiever = ids(f); %locates the id corresponding to the student whose row contains the maximum average
% Each row corresponds to a student and each column corresponds to a
%   different category item. The second input is a column vector of gtID
%   that corresponds to the rows of the array. The function should then
%   remove all students who made a zero on the final exam, then calculate
%   the student averages and append that as a column, and then calculate
%   the overall averages for each category, including student averages, and
%   append it as a row vector. Finally, the function should return the gtID
%   of the student with the highest average.
% %Usage:[gradesandaverages overachiever] = calcGrades(grades, ids)
% yuck = grades==0;
% [b c] = find(yuck);
% grades(b,:) = [];
% ids(b,:) = [];
% b = grades';
% b = mean(b);
% average = b';
% gradesandaverage = [grades average];
% overallaverage = mean(gradesandaverage);
% gradesandaverages = [gradesandaverage; overallaverage];
% [e f] = max(gradesandaverages(:,4));
% overachiever = ids(f);
end
