
function uniqueBestFit( xvals, yvals )
j=1; %initialize power variable
b=length(xvals)./2; %compute the number of subplot rows
c=mod(length(xvals),2);
rows=b+c; %total number of subplot rows
[cat dog]=sort(xvals); %sort the x-values from lowest to highest and reorganize
%both x and y vectors accordingly
xvals=xvals(dog); %the reorganizing
yvals=yvals(dog); %
newx=linspace(min(xvals), max(xvals)); %newx values
titles={'1st' '2nd' '3rd' '4th' '5th' '6th' '7th' '8th' '9th' '10th'}; %titles to choose from
lowestcurve=[]; %initialize....
avgdiff=[];
corrx=[1];

 while j<=length(xvals)-1
        coeff=polyfit(xvals, yvals, j); %find the coefficients
        newy=polyval(coeff, newx); %fine the new y values        
        w=100./((max(xvals)-min(xvals))); %find the spacing...
        
        for h=1:(max(xvals)-min(xvals)) %record the spacing
            corrx=[corrx (h.*(w))];
        end
        
     l=length(yvals); %fine the length of the y values
     b=newy(round([corrx])) %find the newy values corresponding to the x values of both
     avgdiff=abs(b(1:l)-yvals); %compute the abs diff
     kappa=mean(avgdiff) %find the mean
     
        if kappa<.75 %if the mean is less than the standard
            lowestcurve=[lowestcurve j] %record it
        end
        
     subplot(rows, 2, j) %plot the original points
     plot(xvals, yvals, 'bo')
     hold on
     plot(newx, newy, 'r') %plot the new points
     title([titles{j} ' Order Fit'])     
     axis square %set the axis
     j=j+1 %move the variable forward
 end
 
 if ~isempty(lowestcurve) %now, find the first plot with good standards and replot it green
     hold on
     subplot(rows, 2, lowestcurve(1))
     coeff=polyfit(xvals, yvals, lowestcurve(1))
     newy=polyval(coeff, newx)
     plot(newx, newy, 'g')
 end
     
     
% uniqueBestFit function to take in x values and y values and create as
% many subplots with unique fit polynomials as possible (length(x
% values)-1). Each unique fit plot will be plotted against the original points
% (plotted in blue circles)and the best plot will be highlighted in green. 
% The best plot is determined via the minimum absolute difference between 
% the old y valeus and the new y values (they are as close in value as possible). 
% Usage: uniqueBestFit( xvals, yvals ) 


end
