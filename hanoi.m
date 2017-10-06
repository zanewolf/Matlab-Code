
function [ kills ] = hanoi( zombies )
if zombies==0 %if there are zero discs 
    axes=0; %then zero movements are possible
else
    axes = 2.*hanoi(zombies-1)+1; %the minimum number of movements possible
end

%Assuming the user knows what hanoi is, given that they called this
%function, they should input the number of discs on the tower and the
%function will return the number of movements possible via the following
%equation: hanoi(n)-2*hanoi(n-1)+1. 
%Usage: function [ axes ] = hanoi( zombies )



end

