function [ olympian ] = xlsGrades( games )
[rome athens sparta] = xlsread(games); %pull out the num, text, and raw data
[r c] = size(sparta); %find the size of the raw data
sprints = mean(rome); %finds the sum of the test grades
rome = [rome;sprints]; %appends to the test averages below the last student's grades
sparta{end+1, 1}='Class Average'; %creates a new, labeled row in the raw data
y=1; %initializes a variable to keep track of the test data
for x = 2:c %initializes the loop variable to the row number in the raw data
    sparta{end, x}=sprints(y); %begins filling in values in the raw data
    %with values from the test means
    y=y+1; %moves the variable keeping track of test means forward
end
polevaults =mean(rome'); %determines the averages of the students' grades
sparta{1, end+1}='Student Average'; %labels a new column in the raw data
[row col] = size(sparta); %finds the new size of the raw data
z = 1; %initializes the variable
for x = 2:row %initializes the second variable
    sparta{x, end}=polevaults(z);%begins inserting corresponding values
    z = z+1; %moves the variable forward
end
marathon = max(polevaults); %finds the maximum of the students' class averages
miles = find(marathon==polevaults); %finds the row location of that student
olympian = sparta{miles+1, 1}; %finds the name of that student
[name code]=strtok(games, '.'); %separates the original file name into two parts
filename = [name '_final' code]; %inserts _final between the actual name and the file tag
xlswrite(filename, sparta); %writes the new info to a new file


%xlsGrades function to take in a file containing the name of students and
%their grades on test and append to the file a row with the mean tests
%grades and a column with the mean students grades, cross referencing the
%"class average" in the right bottommost corner and save to a new file
%name. It will also give you the name of the student with the highest
%grade. 
%  Usage: function [ olympian ] = xlsGrades( games )

end

