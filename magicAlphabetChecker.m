function [ abracadabra ] = magicAlphabetChecker( opensesame )
viola = double(opensesame); %converts the array to doubles, because typing 
%with single quote marks hastily becomes tedious
[deck, cards] = size(viola); %determines the size of the array
if deck ~= cards
    abracadabra = 'false'; %if the array isn't a square, the magician has 
    %all ready misplaced the bunny
else
    viola(viola>=97 &viola<=122) = viola(viola>=97 & viola<=122)-32; 
    %converts all lower case letters to upper case letters
    firstletter = min(min(viola)); %finds the starting letter, because it
    %won't be assumed that the magic array will always start with 'A'
    letters = (firstletter + deck.^2 -1); %determines the last number/letter
    %in the array (e.g., if the first number is 70(F) and it is a 4x4 array,
    %then the last number will be 85(U).
    magichat = firstletter:letters; %creates a new array consisting of elements
    %from the first to the last element found, specifically using each
    %element only once
    tada = viola(:); %the beautiful assistant steps onto the stage (linearizes the  array) 
    tada = tada'; %she steps into the box (transposes the new vector)
    violahat = sort(tada); %magician locks the box (sorts the vectory)
    match = violahat==magichat; % the magician spins the box (compares the
    %two vectors, the one given and the one created)
    whoops = find(match==0); %the magician unlocks the box (finds anyplace
     %the logical vector may contain a zero)
    if length(whoops) >=1
        abracadabra = 'false'; %oh no! the assistant is still there! FAIL! 
        %(the vectors don't match because there is a zero)
    else %no elseif, because either the assistant is there or she isn't, but if she isn't....
        %on to the next trick!
        ultimatesum = deck*(firstletter -1) + (deck^3 + deck)/2; %three volunteers to pick a card, any card (determines
        %what the sums should be based on a given equation)
        rowsum = sum(viola); %victim 1 picks a card and sticks it back in
        %(calculates the sums of each row)
        columnsum = sum(viola');%victim 2 picks a card and sticks it back in
        %(calculates the sums of each column by transposing the original
        %array)
        diagsum = sum(diag(viola)); %victim 3 picks a card and sticks it back in
        %(calculates the sum of the diagonal in the array)
        whoopsie = find(rowsum~=ultimatesum); %the magician does his thing 
        %and draws the first victim's "card" (determines if any of the sum
        %values don't equal the ultimate sum
        whoopsie2 = find(columnsum ~=ultimatesum); %draws the second victim's "card"
        %(determines if any of the column sums don't equal the ultimate
        %sum)
        whoopsie3 = find(diagsum ~=ultimatesum); %draws the third victim's "card"
        %(determines if any of the column sums don't equal the ultimate sum)
        %drumroll
        if length(whoopsie)>=1 %OH NO it's the wrong card! FAIL! (there's a sum that doesn't match)
            abracadabra = 'false'; %Return to start. 
        else %otherwise, it's the right card, the crowd cheers, and the magician 
            %feels confident
            if length(whoopsie2) >=1 %OH NO it's the wrong card! FAIL! (there's a sum that doesn't match)
                abracadabra = 'false'; %Do not pass go
            else %YAY! the crowd claps again, the magician feels cocky, and it's time for round three.
                if length(whoopsie3) >=1 %OH NO! it's the wrong card! FAIL! (there's a sum that doesn't match)
                    abracadabra = 'false'; %Do not collect $200
                else %Hey, he got it right a third time! The crowd goes wild!! 
                    abracadabra = 'true'; %Successful show, the crowd applauds, the magician bows, and the curtains draw shut. 
                end
            end
        end
    end
end

% Function to determine whether a given character array is comparable to a magic
% array in matlab (one that creates a NxN array of numbers 1:N^2).
% % Usage:    function [ abracadabra ] = magicAlphabetChecker( opensesame )
% viola = double(opensesame); %converts the array to doubles, because typing 
% %with single quote marks hastily becomes tedious
% [deck, cards] = size(viola); %determines the size of the array
% if deck ~= cards
%     abracadabra = 'false'; %if the array isn't a square, the magician has 
%     %all ready misplaced the bunny
% else
%     viola(viola>=97 &viola<=122) = viola(viola>=97 & viola<=122)-32; 
%     %converts all lower case letters to upper case letters
%     firstletter = min(min(viola)); %finds the starting letter, because it
%     %won't be assumed that the magic array will always start with 'A'
%     letters = (firstletter + deck.^2 -1); %determines the last number/letter
%     %in the array (e.g., if the first number is 70(F) and it is a 4x4 array,
%     %then the last number will be 85(U).
%     magichat = firstletter:letters; %creates a new array consisting of elements
%     %from the first to the last element found, specifically using each
%     %element only once
%     tada = viola(:); %the beautiful assistant steps onto the stage (linearizes the  array) 
%     tada = tada'; %she steps into the box (transposes the new vector)
%     violahat = sort(tada); %magician locks the box (sorts the vectory)
%     match = violahat==magichat; % the magician spins the box (compares the
%     %two vectors, the one given and the one created)
%     whoops = find(match==0); %the magician unlocks the box (finds anyplace
%      %the logical vector may contain a zero)
%     if length(whoops) >=1
%         abracadabra = 'false'; %oh no! the assistant is still there! FAIL! 
%         %(the vectors don't match because there is a zero)
%     else %no elseif, because either the assistant is there or she isn't, but if she isn't....
%         %on to the next trick!
%         ultimatesum = deck*(firstletter -1) + (deck^3 + deck)/2; %three volunteers to pick a card, any card (determines
%         %what the sums should be based on a given equation)
%         rowsum = sum(viola); %victim 1 picks a card and sticks it back in
%         %(calculates the sums of each row)
%         columnsum = sum(viola');%victim 2 picks a card and sticks it back in
%         %(calculates the sums of each column by transposing the original
%         %array)
%         diagsum = sum(diag(viola)); %victim 3 picks a card and sticks it back in
%         %(calculates the sum of the diagonal in the array)
%         whoopsie = find(rowsum~=ultimatesum); %the magician does his thing 
%         %and draws the first victim's "card" (determines if any of the sum
%         %values don't equal the ultimate sum
%         whoopsie2 = find(columnsum ~=ultimatesum); %draws the second victim's "card"
%         %(determines if any of the column sums don't equal the ultimate
%         %sum)
%         whoopsie3 = find(diagsum ~=ultimatesum); %draws the third victim's "card"
%         %(determines if any of the column sums don't equal the ultimate sum)
%         %drumroll
%         if length(whoopsie)>=1 %OH NO it's the wrong card! FAIL! (there's a sum that doesn't match)
%             abracadabra = 'false'; %Return to start. 
%         else %otherwise, it's the right card, the crowd cheers, and the magician 
%             %feels confident
%             if length(whoopsie2) >=1 %OH NO it's the wrong card! FAIL! (there's a sum that doesn't match)
%                 abracadabra = 'false'; %Do not pass go
%             else %YAY! the crowd claps again, the magician feels cocky, and it's time for round three.
%                 if length(whoopsie3) >=1 %OH NO! it's the wrong card! FAIL! (there's a sum that doesn't match)
%                     abracadabra = 'false'; %Do not collect $200
%                 else %Hey, he got it right a third time! The crowd goes wild!! 
%                     abracadabra = 'true'; %Successful show, the crowd applauds, the magician bows, and the curtains draw shut. 
%                 end
%             end
%         end
%     end
% end                 
% %  

end

