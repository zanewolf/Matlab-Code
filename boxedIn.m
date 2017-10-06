function [ tinytom ] = boxedIn( mightymouse )
[r c] = size(mightymouse);%find the size
if mod(r,2)==0 %if it is even...
    n = r/2; %set a variable
    for x =ones(1:n)        %run that variable
        a = mightymouse(x,x)==mightymouse(x,:); %check to see if the values in the rows and columns are the same
        b= mightymouse(x,x)==mightymouse(:,x);
        c = mightymouse(x,x)==mightymouse(end,:);
        d = mightymouse(x,x)==mightymouse(:,end);
        issquare = [a b' c d'];
        if all(issquare==1) %if they are....
            mightymouse = mightymouse(2:end-1, 2:end-1); %delete the box
            if size(mightymouse)==[2,2] %if the size is two by two
                if all(mightymouse(1,1)==mightymouse(:)') %and if it is another box
                    mickey = []; %the result is empty
                else %but if it is not another box
                    mickey = mightymouse; %then that is your result. 
                break   
                end
            elseif size(mightymouse)==[0,0] %if the size is zero
                    mickey = mightymouse; %that is your box
                    break
            else
                    mightymouse = mightymouse; %if there is more...run the loop again.            
            end
        else %if they are not equal
            if isempty(mightymouse(2:end-1, 2:end-1)) %there is nothing left in
                %the box if you delete the packaging
                mickey = []; %set the contents equal to the result
                break
            else %there is more to the package
                mightymouse = mightymouse(2:end-1, 2:end-1); %delete an run the loop again. 
            end
        end
    end
else %if it is odd...
    n = floor(r/2); %set some variable 
    for x =ones(1:n) %run the from one to that variable
        a = mightymouse(1,1)==mightymouse(1,:); %check to see if the values are the same
        b = mightymouse(1,1)==mightymouse(:,1);
        c = mightymouse(1,1)==mightymouse(end,:);
        d = mightymouse(1,1)==mightymouse(:,end);
        issquare = [a b' c d'];
        if all(issquare)==1 %if they are...
            mightymouse = mightymouse(2:end-1, 2:end-1); %delete the box
            if size(mightymouse)==[1,1] %if the size if one
                mickey = mightymouse; %that is your box
                break                
            elseif size(mightymouse)==[0,0] %if the size is zero
                    mickey = mightymouse; %that is your box
                    break
            else
                    mightymouse = mightymouse; %if there is more...run the loop again. 
                    
            end            
        else 
             mightymouse = mightymouse(2:end-1, 2:end-1); %if they are not..
            if size(mightymouse)==[1,1] %if the size is one
                mickey = []; %there is no box
                break
            else
                mightymouse = mightymouse; %else, run the loop again. 
            end

        end
    end
end
    tinytom = mickey;
    %function to determine that, given an array, if there are rows and
    %columns that contain the same number, forming a box around the inner
    %elements. If there is such a box, then that box will be deleted. If
    %the inner contents form another box, it will repeat, until either the
    %contents are not a box or there are no contents left. 
end

