function [ marge ] = simpson( bart, lisa )
lenny=[]; %set the variables
moe=[];
[cat dog]=sort(bart); %sort the x-values from lowest to highest and reorganize
%both x and y vectors accordingly
selma=bart(dog); %the reorganizing
patty=lisa(dog); %the reorganizing
maggie=polyfit(selma, patty, length(selma)-1); %create the coefficients of the polynomial
 for j=1:length(bart)-1
     lenny=[lenny (selma(j+1)-selma(j)).*polyval(maggie, (selma(j) + selma(j+1))./2)];
     %find the midpoint values using the midpoint formula (b-a).*f((a+b)./2)
     moe=[moe .5.*(selma(j+1)-selma(j)).*(patty(j+1)+patty(j))];
     %find the midpoint values using the trapezoid formula (b-a).*(f(b)+f(a))
 end
     
     homer=(2.*lenny + moe)./3; %the weighted average of the midpoints
     marge=sum(homer); %compute the sum 

% simpson to determine the numerical derivative using the x values and the 
% y values. It will then determine the midpoints between the points two different
% ways (the midpoint formula and the trapezoid formula) and will take a weighted
% average of the two answers and sum the average to compute the derivative. 
%Usage: [ marge ] = simpson( bart, lisa )

end

