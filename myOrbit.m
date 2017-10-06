% Do NOT modify these lines -----------------------------------------------
function myOrbit
clc
close all

global rows
global cols
global shipPts
% -------------------------------------------------------------------------

%% PART 1:
% You should use this space to define variables to help you draw your
% planet such as the planet radius, planet location, and the data points
% that you will use to draw the planet.
set(gcf,'Color','black')
planetloc = [50, 50, 50];   % this is only an example. You may want/have to
                            % change this to suit your needs
sunloc=[0, 50, 70];
planet2=[100, 0, 40];
% Create the x, y, and z-coordiates for the planet using the sphere()
% function. Type 'help sphere' into the command window for more information
% on how the function works. DO NOT name these output variables "xx", "yy",
% or "zz" as they are needed elsewhere.
[x, y, z] = sphere(90);
radius = 20;

x=(x.*radius)+90;
y=(y.*radius)+90;
z=(z.*radius)+15;

[sx, sy, sz]=sphere(90);
sradius=10;
pradius=2;
sx=(sx.*sradius);
sy=(sy.*sradius)+50;
sz=(sz.*sradius)+70;
[px py pz]=sphere(90);
px=(px.*pradius)+100;
py=(py.*pradius);
pz=(pz.*pradius)+40;

asrad=1;
asrad2=2;
asrad3=3;
[asx asy asz]=sphere(90);
asx=(asx.*asrad)+1;
asy=(asy.*asrad);
asz=(asz.*asrad)-2;
asx2=(asx.*asrad2)-3;
asy2=(asy.*asrad2)+2;
asz2=(asz.*asrad2)-3;
asx3=(asx.*asrad3)+5;
asy3=(asy.*asrad3)-3;
asz3=(asz.*asrad3)-7;
asx4=(asx.*asrad2)+10;
asy4=(asy.*asrad2)-1;
asz4=(asz.*asrad2)-3;
% Adjust the coordinates to make the planet the size that we want and put
% the planet where we want it.



%% PART 2:
% You should use this space to define variables to help you draw the rings.
% This could include the ring colors, and vector of values that you will
% need in order to draw the rings.


theta=linspace(0, 2*pi);
r = linspace(25,35, 10);
colors = 'bgrcmykw';


%% PART 3:
% You should use this space to define variables to help you draw the
% spaceship and make it zoom toward the planet. Use bodies of rotation to
% make the 3-dimensional coordinates for the spaceship. You should name
% your final x, y, and z-coordiates "xx", "yy", and "zz".

% Note: you will want to perform the body of rotation around the z-axis.
u=[0 1 1 1 2 2 2 2 3 3 3 3 3 3 2 2 1 1 1 3 4 4 4 4 3 2 0];
v=[3 3 4 4 4 3 2 1 1 2 3 4 5 6 6 5 5 6 7 8 9 10 11 12 12 14 15];
th=linspace(0, 2.*pi);
[uu tth]=meshgrid(u, th);
[vv tth]=meshgrid(v, th);
rr=uu;
xx=vv;
yy=rr.*sin(tth);
zz=rr.*cos(tth);



% Use this space to define starting points for the ship and the ship's
% orbital radius. Note: if you changed the planet location then you may
% have to change some of these parameters.

shipstart = planetloc;
% Make sure the orbit radius is big enough so the ship doesn't crash into
% the planet.
orbitradius = shipstart(3) .* 1.1;
% Make the ship start closer to the screen than the planet so we can make
% it zoom toward the planet.
shipstart(3) = shipstart(3) - abs(shipstart(3));

% DO NOT modify this code -------------------------------------------------
[rows cols] = size(xx);
ln = rows*cols;
xv = reshape(xx, 1, ln);
yv = reshape(yy, 1, ln);
zv = reshape(zz, 1, ln);
shipPts = [xv; yv; zv];
% -------------------------------------------------------------------------


% Initialize a theta increment to use in the loop.
thinc = 0;
while thinc < 3*pi/4
    %% PART 4:
    % You should use a nested loop here to draw the rings. Consider having
    % a string of color values you want and using the loop variable to
    % alternate the colors. Rings will need to be drawn before the planet
    % to work correctly.
    
for rad=r
ringx1 = rad*cos(theta)+90;
ringy1=rad*sin(theta)+90;

ringz=zeros(1, length(theta))+15 ;
plot3(ringx1, ringy1, ringz, colors(1));
hold on
colors=[colors(2:end) colors(1)];
end


        % You should also call hold on after the plot command so all of the
        % rings get drawn.
        

    %% PART 5:
    % You should use this space to draw the planet. You will probably want
    % to use 'shading interp' and maybe change the color or colormap. See 
    % 'help graph3D' to see a list of different color maps. 
 
surf(x, y, z);
shading interp;

asy=asy+3;
asy2=asy+2;
asy3=asy+4;
asy4=asy+1;
mesh(sx, sy, sz);
mesh(px, py, pz);
mesh(asx, asy, asz);
mesh(asx2, asy2, asz2);
mesh(asx3, asy3, asz3);
mesh(asx4, asy4, asz4);
mesh(asx-3, asy, asz);
mesh(asx2+2, asy2-3, asz2-3);
mesh(asx3+1, asy3+2, asz3-5);
mesh(asx4+1, asy4-8, asz4+6);
mesh(asx2+11, asy2-3, asz2-6);
mesh(asx3-9, asy3+3, asz3-5);
mesh(asx4+10, asy4-12, asz4+6);
mesh(asx2+15, asy2-10, asz2-8);
mesh(asx3-7, asy3+2, asz3-5);
mesh(asx4+1, asy4-4, asz4+6);
mesh(asx2+15, asy2-15, asz2-3);
mesh(asx3-7, asy3+2, asz3-5);
mesh(asx4+9, asy4-3, asz4+6);
mesh(asx4+1, asy4-4, asz4+6);
mesh(asx2, asy2-15, asz2-3);
mesh(asx3-20, asy3+10, asz3-8);
mesh(asx4+20, asy4-3, asz4);
mesh(asx3-7, asy3+2, asz3-5);
mesh(asx4+9, asy4-3, asz4-13);
mesh(asx4+1, asy4+3, asz4-20);
mesh(asx2, asy2-10, asz2+3);
mesh(asx3-20, asy3-8, asz3-8);
mesh(asx4+20, asy4-5, asz4-15);
 
    % You should change the axis to make sure both the ship and planet are
    % visible the entire time. You should also turn the axis off, to
    % provide an unobstructed view of your scene.
    axis off;
    axis([-30, 110, -40, 100, -20, 110]);

    % This is a good azimuth and elevation from which to view the scene,
    % but feel free to experiment with this and see what happens.
    view(-15,7);

	%% PART 6:
    % Now use the rotate function to rotate the ship points.
   
    [xx yy zz] = rotate(-thinc);
    
    % Adjust the coordinates of the ship to make it move. You'll probably
    % want to use your theta value so the ship moves in a circle.
    orbitx = shipstart(1) - orbitradius * cos(thinc);
    orbity = shipstart(2);
    orbitz = shipstart(3) + orbitradius * sin(thinc);
    
    
    % Use some sort of scale factor to make your ship get smaller as it
    % heads toward the planet. Think about how to do this using the orbital
    % pathway of the ship and how they should relate.

    xx=(xx+orbitx);
    yy=(yy+orbity);
    zz=(zz+orbitz);
   
    surf(xx, yy, zz);
    shading interp
  

     
   
    % Make the final points for the ship by multiplying "xx", "yy", and
    % "zz" by the scale (making the ship seem smaller as it goes toward the
    % planet) and adding the proper "orbit" coordinates (putting the ship
    % in the proper place for this frame).

    
    
    % Plot the ship. You might want to use 'shading interp' here as well to
    % make the colors smooth.

    
    
% DO NOT modify these lines -----------------------------------------------
    % Now set hold off so the next frame doesn't get drawn on the same
    % plot.
    
     pause(.03)
    % Increment the counter so the spaceship keeps going.
    thinc = thinc + pi/100;
    hold off
   
 
% -------------------------------------------------------------------------
end


end


% DO NOT modify these lines -----------------------------------------------
function [xx yy zz] = rotate(th)
global rows
global cols
global shipPts
% -------------------------------------------------------------------------
%% Part 7. Use this space to define your rotation matrix for the axis
%  around which you wish to revolve.

%rotz=[cos(th) -sin(th) 0; sin(th) cos(th) 0; 0 0 1]
rotx=[1 0 0; 0 cos(th) -sin(th); 0 sin(th) cos(th)];
shipPts=shipPts.*.93;
% Multiply your rotation matrix by the vector of data points given in the
% variable shipPts. Save your answer in the variable "newShip".
newShip=rotx*shipPts;


% DO NOT modify these lines -----------------------------------------------
xx = reshape(newShip(1,:), rows, cols);
yy = reshape(newShip(2,:), rows, cols);
zz = reshape(newShip(3,:), rows, cols);
end
% -------------------------------------------------------------------------
% TEAM ROCKET IS BLASTING OFF AGAIN! 
%--------------------------------------------------------------------------
% Congratulations! You have finished this week's homework assignment.
% Please make sure to turn in all files needed to run your function and
% submit under the correct assignment. 

%Additions: 
%1) glittering planetary rings (colors alternate)
%2) one sun-like object
%3) a smaller planet "off in the distance"
%4) a moving asteroid field consisting of 26 separate asteroids
%5) Also, the spaceship is modeled off the Enterprise. Because of the plotting,
%   however, it looks like someone squeezed the neck of a waterbottle. If
%   you input 
%   >>u=[0 1 1 1 2 2 2 2 3 3 3 3 3 3 2 2 1 1 1 3 4 4 4 4 3 2 0];
%   >>v=[3 3 4 4 4 3 2 1 1 2 3 4 5 6 6 5 5 6 7 8 9 10 11 12 12 14 15];
%   >>w=u.*-1;
%   >>plot(u,v,w,v,'-')
%   the result should be a Enterprise representation. 
%6) Made the background black.
