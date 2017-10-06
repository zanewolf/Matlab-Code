
function [ oinkish ] = pigLatin( english )
curly = []; %sets up a dummy vector
[larry, moe] = strtok(english, ' '); %partitions the sentence by the spaces 
%between words
while ~isempty(larry) %sets the condition that larry shouldn't be empty--
    %it won't run if it is. 
    first = (larry== 'a'| larry=='e'| larry=='i'|larry=='o'|larry=='u'); 
    %sets up a logical index of vowels
    if first(1)~=1 %if the first element in the logical index is not true...
        [cons a] = strtok(larry, 'aeiou'); %separates larry into the first constanent(s)
        %and the rest of the word
        oinky = [a '-' cons 'ay']; %concatentates the rest of the word with a 
        %dash, the beginning constanent(s) and 'ay'
        curly = [curly ' ' oinky]; %concatenates curly with the resulting string
    else %if larry's first letter is a vowel...
        oinky = [larry '-' 'way']; %concatenates the word with a dash and a 'way'
        curly = [curly ' ' oinky]; %concatenates the resulting string with curly
    end
    [larry, moe] = strtok(moe, ' '); %keeps the loop going
end
oinkish = curly %sets the output
    
%Function that converts any given string (word or sentence) into the
%corresponding pig-latin words. For instance, "Good morning, oh beautiful
%Atlanta" will become "Ood-gay orning-may, oh-way eautifuly-bay
%Atlanta-way". function [ oinkish ] = pigLatin( english )
% Usage: curly = []; %sets up a dummy vector
% [larry, moe] = strtok(english, ' '); %partitions the sentence by the spaces 
% %between words
% while ~isempty(larry) %sets the condition that larry shouldn't be empty--
%     %it won't run if it is. 
%     first = (larry== 'a'| larry=='e'| larry=='i'|larry=='o'|larry=='u'); 
%     %sets up a logical index of vowels
%     if first(1)~=1 %if the first element in the logical index is not true...
%         [cons a] = strtok(larry, 'aeiou'); %separates larry into the first constanent(s)
%         %and the rest of the word
%         oinky = [a '-' cons 'ay']; %concatentates the rest of the word with a 
%         %dash, the beginning constanent(s) and 'ay'
%         curly = [curly ' ' oinky]; %concatenates curly with the resulting string
%     else %if larry's first letter is a vowel...
%         oinky = [larry '-' 'way']; %concatenates the word with a dash and a 'way'
%         curly = [curly ' ' oinky]; %concatenates the resulting string with curly
%     end
%     [larry, moe] = strtok(moe, ' '); %keeps the loop going
% end
% oinkish = curly %sets the output

end
