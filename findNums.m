
function [ justnums ] = findNums( txtandnums)
[r c] = size(txtandnums);
for x = 1:r   %for all the rows
    for y = 1:c %and for all the columns
       a = ~strcmp(class(txtandnums{x,y}), 'double') %check the class
       if a==1 %if the class is not a double...
           dunce(x,y) = NaN; %make it a nan
       else
           dunce(x,y) = txtandnums{x,y} %if not, whatever....
       end
       
    end
end
dummy2=[] %initialize dummy array
for x = 1:r  %for all the rows
    for y = 1:c %and for all the columns
        b = ~strcmp(num2str(dunce(x,y)), num2str(NaN))
        dummy2(x,y) = b %find where NaN is not true
    end
end
java = [] %initialize dummy vector
for x= 1:r %for all the rows
    if all(dummy2(x,:)==0)
       java = [java x] %find the rows of all false spots
    else
        java = java
    end
end
dunce(java,:)=[] %delete the false rows
morecoffee = [] %initialize another vector
for y = 1:c %for all the columns...
    caffeine = all(dummy2(:,y)==0) %find all false columns
    if caffeine ==1
        morecoffee= [morecoffee y] 
    else
        morecoffee= morecoffee
    end
end
dunce(:, morecoffee)=[] %delete columns of all false spots
justnums = dunce %what's left is the nums...

%function to take in a cell array and whittle it down to another array
%containing most, if not all numbers. 
%Usage: [ justnums ] = findNums( txtandnums)
end