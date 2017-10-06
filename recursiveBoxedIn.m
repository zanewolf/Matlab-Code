function [smallerbox] = recursiveBoxedIn( biggerbox )
[r c]=size(biggerbox); %determine the size
if isempty(biggerbox) %if the box is empty
    smallerbox=[]; %return empty
elseif r==1|c==1
    smallerbox=biggerbox;
elseif mod(r,2)==0 %if there are even rows
    if r==2 %if the row number is two
        out=samevalues(biggerbox); %determine values
        if out==true % if a container box
            smallerbox=[]; %return empty
        elseif out==false %if not a 2x2container
            smallerbox=biggerbox; %return box
        end
    elseif r>2 %if bigger than a 2x2 box
        out=samevalues(biggerbox); %determine values
        if out==true %if a box
            smallerbox=recursiveBoxedIn(biggerbox(2:end-1, 2:end-1)); %call the function for the contents
        end
    end
elseif mod(r,2)==1 %if odd numbeer of rows
    if r==1 %if row count is one
        smallerbox=biggerbox; %return the one
    elseif r==3 %if row count is three
        out=samevalues(biggerbox); %determine values
        if out==true %if a container box
            smallerbox=recursiveBoxedIn(biggerbox(2:end-1, 2:end-1)); %rerun the function
        elseif out==false %if not a container box
            smallerbox=biggerbox; %return the box
        end
    elseif r>3 %if more than three rows
        smallerbox=recursiveBoxedIn(biggerbox(2:end-1, 2:end-1)); %rerun the function for the contents
    end
end

% Function to determine the smallest box possible within an array
% containing an assortment of numbers.If there are rows and
% columns that contain the same number, forming a box around the inner
% elements. If there is such a box, then that box will be deleted. If
% the inner contents form another box, the function will call itself, until either the
% contents are not a box or there are no contents left. 
%Usage: function [smallerbox] = recursiveBoxedIn( biggerbox )
end
%call helper function to determine whehter the outer box is actually a
%container box
function out=samevalues(box)
[r c]=size(box);
n=r/2;
if r==1|c==1
    if box(1)==box(end)
        out=true;
    else
        out=false;
    end
end
for x =ones(1:n)        %run that variable
        a = box(x,x)==box(x,:); %check to see if the values in the rows and columns are the same value
        b= box(x,x)==box(:,x);
        c = box(x,x)==box(end,:);
        d = box(x,x)==box(:,end);
        issquare = [a b' c d'];
end
if all(issquare) %if all true
    out=true; %it's a container box
else %if not all true
    out=false ;%then it's not a container box
end

end

