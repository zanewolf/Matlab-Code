
function findPeaks(file)
[num text raw]=xlsread(file); %read the file
xvals=num(:,1)';%get the x values
yvals=num(:,2)'; %get the y vals
 %initialize...
maxy=[];
corrxmax=[];

    
for j=2:length(yvals)-1 %for the second value to the second to last values
    if yvals(j)>yvals(j-1)& yvals(j)>yvals(j+1) %if it is a max...
        maxy=[maxy yvals(j)]; %record the max value
        corrxmax=[corrxmax xvals(j)]; %record the corresponding x-values
        end
end

k=max(maxy); %find the maximum of the loca max
j=maxy==max(maxy); %find the corresponding x value....
xmax=corrxmax(j);
plot(xvals, yvals, 'b-', corrxmax, maxy, 'go', xmax, k, 'k*'); %plot
% findPeaks Function to read an excel file with two columns, the x values, 
% and the y values, and plot the original data in a blue line, the local
% maximum in green circles, and the global maximum in a black star. 
%  Usage: findPeaks(file) 


end
