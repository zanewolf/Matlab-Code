

function [ found, location ] = searchTree( tree, leaf )
if isstruct(tree) %if the input is actually a tree..
    if leaf==tree.data %check to see if it's the number wanted
        found=true; %if it is, yay
        location={} ;%location is empty
    
    elseif leaf<=tree.data %if the number in the data field is greater than the number
        newtree=tree.left; %go to the left
        
        [found, location]=searchTree(newtree, leaf); %rerun
        location=['left' location]; %apphend location
        
    elseif leaf>=tree.data %if the number is less 
        newtree=tree.right   ;   %go to the right
        [found, location]=searchTree(newtree, leaf); %rerun
        location = ['right', location]; %apphend the location
    elseif isempty(data) %if it's empty
        found=false; %you didn't find the value
        location=location; %the location is whatever you took to get there
        
    end
else %if it's not a structure...
    found=false; %you didn't find the number
    location={}; %and the location is empty
end

%Function to methodically search through a given binary search tree and
%return a logical on whether the wanted number is in the tree at all and if
%it is, the path the function took in the tree (right branch vs left
%branch) to find that number.
%Usage: function [ found, location ] = searchTree( tree, leaf )   D
end
