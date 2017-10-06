function [ victor ] = mySpaces( start, finish, miles, terrain )
b = strcmp('linspace', terrain); %determines whether a linear spacing or a 
%fibonacci sequence needs to be used by comparing the fourth input to a set
%string
if b==1 %if the strings match, then a linear spacing code body will be used
    a = (finish-start)./(miles-1); %determines how many spaces to be used
    victor = round(10000*(start:a:finish))/10000; %cleans up the vector
else %if b~=1, then a fibonacci sequence will be used
    fibonacci = [0 1]; %the first two terms of the fibonacci sequence are set
    n = 3; %starting with the third position in the vector
    while n <=(miles+1) %initializes a variable and sets up the condition that while n <= miles+1
        %if it were just n<=miles, the sequence would be one element short
        fibonacci(n) = fibonacci(n-1) + fibonacci(n-2); %determines the value of the vector element
        n = n+1; %moves the conditional variable toward it's ultimate end
        victor =  fibonacci(2:end); %outputs the resulting fibonacci sequence from the second element (1) to it's end
    end
end
%Function to take in three values (start number, start number, number of
%elements) and a string and outputs either a linear spacing or a fibonacci
%sequence, determined by the string input. 
% %Usage: function [ victor ] = mySpaces( start, finish, miles, terrain )
% b = strcmp('linspace', terrain) %determines whether a linear spacing or a 
% %fibonacci sequence needs to be used by comparing the fourth input to a set
% %string
% if b==1 %if the strings match, then a linear spacing code body will be used
%     a = floor(10*(finish-start)./miles)/10 %determines how many spaces to be used
%     victor = round(10000*(start:a:finish))/10000 %cleans up the vector
% else %if b~=1, then a fibonacci sequence will be used
%     fibonacci = [0 1] %the first two terms of the fibonacci sequence are set
%     n = 3 %starting with the third position in the vector
%     while n <=(miles+1) %initializes a variable and sets up the condition that while n <= miles+1
%         %if it were just n<=miles, the sequence would be one element short
%         fibonacci(n) = fibonacci(n-1) + fibonacci(n-2) %determines the value of the vector element
%         n = n+1 %moves the conditional variable toward it's ultimate end
%         victor =  fibonacci(2:end) %outputs the resulting fibonacci sequence from the second element (1) to it's end
%     end
% end
end
%
% Test Cases:
%   lin1 = mySpaces(1,9,9,'linspace');
%       lin1 => [1 2 3 4 5 6 7 8 9]
%
%   fib1 = mySpaces(1,9,9,'fibspace');
%       fib1 => [1 1 2 3 5 8 13 21 34]
%
%   lin2 = mySpaces(5,2,7,'linspace');
%       lin2 => [5 4.5 4 3.5 3 2.5 2]
%
%   fib2 = mySpaces(5,2,7,'fibspace');
%       fib2 => [1 1 2 3 5 8 13]
