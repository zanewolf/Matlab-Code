function [ dejavu ] = reMixUp( strA, strB, n)
str1 = double(strA); %convert strings into double elements
str2 = double(strB);
if length(str1) >= 2.* length(str2) %first conditional to determine if the
    %first vector is greater than or equal to double the length of the 
    %second vector. 
    str2 = [str2 str2]; %doubles the second vector 
    if length(str1) > length(str2) %If the first vctr is still bigger after
%         doubling the second vector, then the following conditional statements 
%         determine just how bigger it is and then adds the correspnding 
%         number of zeros (48s) to the second vector
        extras = length(str1) - length(str2);
        str2(length(str2)+1: length(str2) + extras) = 48;
    else 
        str2 = str2;
    end
elseif length(str2) >= 2.* length(str1) %this conditional is the same as
    %the one above, it just assumes the second vector is the larger one
    %this time
    str1 = [str1 str1];
    if length(str2) > length(str2)
        extras = length(str2) - length(str1);
        str1(length(str1)+ 1: length(str1) + extras) = 48;
    else
        str1 = str1;
    end
elseif (length(str1) > length(str2)) & (length(str1) < 2.*length(str2))
    %conditional if the first vector is bigger than the second vector but
    %not twice as large
    thebigger = max (length(str1), length(str2));
    extras = thebigger - length(str2);
    str2(length(str2)+1: length(str2) + extras)=48;
elseif (length(str2) > length(str1)) & (length(str1) <2.*length(str1))
    %Again, if the second vector is bigger than the first but not twice as
    %large
    thebigger = max(length(str1), length(str2));
    extras = thebigger - length(str1);
    str1(length(str1)+1: length(str1) + extras) = 48;
else 
    str1 = str1;
    str2 = str2;
    %this just says that if they are equal (the only case not accounted for
    %in the above statements, then don't alter them. 
end
b = 1:(2*length(str1));
b(1:2:end)=str1;
e = (1:length(str2)-n+1);
c = ((length(str2)-n+2):length(str2));
both = [c e];
newVec = str2(both);
b(2:2:end) = newVec;
dejavu = char(b);
%code copied and pasted from homework 4 assignment mixUp. 

%this function will make two strings the same length by either doubling the 
%elements, adding zeros, or a combination of both to the shorter vector. 
%It will then mix up the two strings starting at some point specified in
%the function call. For example, 'hello' and 'world' at 3 will become
%'hledlwloor'. 
%Usage; function [ dejavu ] = reMixUp( strA, strB, n)
% str1 = double(strA);
% str2 = double(strB);
% if length(str1) >= 2.* length(str2)
%     str2 = [str2 str2];
%     if length(str1) > length(str2)
%         extras = length(str1) - length(str2);
%         str2(length(str2)+1: length(str2) + extras) = 48;
%     else 
%         str2 = str2;
%     end
% elseif length(str2) >= 2.* length(str1)
%     str1 = [str1 str1];
%     if length(str2) > length(str2)
%         extras = length(str2) - length(str1);
%         str1(length(str1)+ 1: length(str1) + extras) = 48;
%     else
%         str1 = str1;
%     end
% elseif (length(str1) > length(str2)) & (length(str1) < 2.*length(str2))
%     thebigger = max (length(str1), length(str2));
%     extras = thebigger - length(str2);
%     str2(length(str2)+1: length(str2) + extras)=48;
% elseif (length(str2) > length(str1)) & (length(str1) <2.*length(str1))
%     thebigger = max(length(str1), length(str2));
%     extras = thebigger - length(str1);
%     str1(length(str1)+1: length(str1) + extras) = 48;
% else 
%     str1 = str1;
%     str2 = str2;
% end
% b = 1:(2*length(str1));
% b(1:2:end)=str1;
% e = (1:length(str2)-n+1);
% c = ((length(str2)-n+2):length(str2));
% both = [c e];
% newVec = str2(both);
% b(2:2:end) = newVec;
% dejavu = char(b);
% 

end



