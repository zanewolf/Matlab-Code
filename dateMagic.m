
function [ startup ] = dateMagic( date, company )
[month day] = strtok (date, '/'); %separates the date into month and day/
%years via the slash
[day yeardash] = strtok (day, '/'); %^ day/year into day and year
day = str2num(day); %converts the string into a numerical value to be 
%operated on 
month = str2num(month); %same as above
slash = strfind(yeardash, '/'); %finds where the last remaining slash is in the year string
year = yeardash(slash +1:end); %lists the year without the dash (which, by necessity is in the first place)
shortyear = year((end./2)+1:end); %given that we are not into years with five digits yet, it is assumed 
%the year can be divided by two quite nicely. Add one to this and the year
%is indexed from positions three and four. 
shortyear = str2num(shortyear); %converts year into numerical values
shortdivfour = floor(shortyear/4); %gives the rounded amount of times the last two digits
%of year can be divided by four. 
comboyear = shortyear+ shortdivfour; %combines the last two digits of the year
%with the number of times it's divisible by four
comboday = comboyear + day; %combines the above value with the day number
switch month %now to determine the monthly value using the given list of values
    case {1, 10}
        monthvalue = 0;
    case 5
        monthvalue = 1;
    case 8
        monthvalue = 2;
    case {2, 3, 11}
        monthvalue = 3;
    case 6
        monthvalue = 4;
    case {9, 12}
        monthvalue = 5;
    case {4, 7}
        monthvalue = 6;
end %because there are only twelves month a in year, an otherwise statement isn't really needed. 
allvalues = comboday + monthvalue; %add the monthly value to the short year notation, the day value, and the division number
year = str2num(year); %convert to numbers so it can be compared
if year >= 2000 %as stated, all years in the new millenia get deducted by one. 
    allvalues = (allvalues -1);
else
    allvalues = allvalues; %So, I'm assuming all the other dates will fall under
    %the 19th and 20th centuries. It's not said what to do with 19th
    %century dates, but there can't be too many companies with those
    %running around, so I'm lumping them in with the good ol' 1900s. 
end
weird = mod(allvalues, 7); %now, time to divide all those values previously added together by seven. This time, because it's
%the remainder I'm after, the mod function is used. 
switch weird %compares the remainder to the possible values given in the list. 
    case 0
        weekday = 'Sunday';
    case 1
        weekday = 'Monday';
    case 2
        weekday = 'Tuesday';
    case 3 
        weekday = 'Wednesday';
    case 4
        weekday = 'Thursday';
    case 5 
        weekday = 'Friday';
    case 6 
        weekday = 'Saturday';
end
startup = sprintf('%s was founded on a %s', company, weekday); %inserts the string containing the company name
%and the string of the weekday into the answer phrase. 

%Function to determine, given the name of a company and the date it was
%founded, on which particular week of the day that the company was founded.
% %Usage: function [ startup ] = dateMagic( date, company )
% [month day] = strtok (date, '/');
% [day yeardash] = strtok (day, '/');
% day = str2num(day);
% month = str2num(month);
% slash = strfind(yeardash, '/');
% year = yeardash(slash +1:end);
% shortyear = year((end./2)+1:end);
% shortyear = str2num(shortyear);
% shortdivfour = floor(shortyear/4);
% comboyear = shortyear+ shortdivfour;
% comboday = comboyear + day;
% switch month
%     case {1, 10}
%         monthvalue = 0;
%     case 5
%         monthvalue = 1;
%     case 8
%         monthvalue = 2;
%     case {2, 3, 11}
%         monthvalue = 3;
%     case 6
%         monthvalue = 4;
%     case {9, 12}
%         monthvalue = 5;
%     case {4, 7}
%         monthvalue = 6;
% end
% allvalues = comboday + monthvalue;
% year = str2num(year);
% if year >= 2000
%     allvalues = (allvalues -1);
% else
%     allvalues = allvalues;
% end
% weird = mod(allvalues, 7);
% switch weird
%     case 0
%         weekday = 'Sunday';
%     case 1
%         weekday = 'Monday';
%     case 2
%         weekday = 'Tuesday';
%     case 3 
%         weekday = 'Wednesday';
%     case 4
%         weekday = 'Thursday';
%     case 5 
%         weekday = 'Friday';
%     case 6 
%         weekday = 'Saturday';
% end
% startup = sprintf('%s was founded on a %s', company, weekday);
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


end

