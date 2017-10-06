

function coloredCampanile( sidelength, rotangle, color ) %main function
view(3) %set the view as dictated
if sidelength>=1 %set the terminating condition
hold on;
height=zeros(1,5); %set the height variable
halfL=sidelength./2; %find the half length, because half will be on +x,+y, and half on -x, -y
    x = [halfL, -halfL, -halfL, halfL, halfL]; %these are the four corner points, with the first one twice
    y= [halfL, halfL, -halfL, -halfL, halfL]; %to complete the square
    plot3(x,y,height, color(1)); %plot the first square with the first color
    color=[color(2:end) color(1)]; %wrap the colors
    height=height+1; %add one to the height
    nextlength=.9.*sidelength; %compute the next length
    plotCampanile(nextlength, rotangle, rotangle, color, height)% call the plotting helper function
    
end
function plotCampanile(sqlength, rotangle, newangle, color, height)% plotting helper function
if sqlength>=1 %as long as the length is greater than or equal to one
    hold on ;
    halfl=sqlength./2; %half length
    xcoords = [halfl, -halfl, -halfl, halfl, halfl]; %corner points
    ycoords= [halfl, halfl, -halfl, -halfl, halfl];
    [newx, newy]=rotateLines(xcoords,ycoords, newangle); %rotated level, calling second helper function
    %rotateLines
    plot3(newx,newy,height, color(1)); %plot
    color=[color(2:end) color(1)];%wrap the colors
    height=height+1; %new height
    nextl=.9.*sqlength;    %new length
    newangle=rotangle+newangle; %find the next total rotation by increments of the angle
    plotCampanile(nextl ,rotangle,newangle, color, height); %rerun the function
    
end
end
hold off
title('My Campanile') %label the graph
xlabel('x-axis') %label the x-axis
ylabel('y-axis') %label the y-axis
zlabel('z-axis') %label the z-axis
axis square %mess with the axes' lengths
% Function to plot a campanile statue look-alike given three starting
% paramters: the initial length of the base square side, the angle of
% rotation upwards, and the colors that each square should be plotted in.
% the Function will then plot the statue at the given increasing rotation
% angle and will decrease the length size by .9.*length for each level. It
% will stop plotting when the length size becomes less than one. 
%Usage: function coloredCampanile( sidelength, rotangle, color )

end

