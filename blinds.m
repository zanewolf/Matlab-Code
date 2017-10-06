
function blinds( thing1, thing2, stripe, cat)
thing1=imread(thing1); %read in the images
thing2=imread(thing2);
[r c l]=size(thing2);%determine the size of the first image, which should be the same as the second
%ex: c=20
x=0:c./stripe; %determine how many bands there are to be
%ex. x=) 1 2 3 4
%ex: 
hat=[]; %initialize the empty vector
for j=x(1:end-1) %for one until the the second to last number of stripes %j=0 1 2 3
    hat=[hat j.*stripe+1 (j+1).*stripe]; %create a vector with elements that
    %represent the start and end of each band
    %ex: hat = 1 4 5 6 10 11 15 16 20
end
mess=thing1; %create a dummy picture
x=hat(3:4:end); %for every other band starting with the second one
for j=1:length(x)
        mess(:, x(j):x(j)+stripe-1,:)=thing2(:, x(j):x(j)+stripe-1,:); %read in the stripes
end
mess=uint8(mess);
[a b c]=size(mess);%make sure the arrays are uint8 
imwrite(mess, cat, 'png'); %write to the new file. 

%Function Blinds takes in two images, the stripe-width, and the new file name. 
% It mixes up two images of the same length so that the first band will be
% the first image and the second band will be the second image, etc, until
% the end of the picture. The resulting image will be the same length as
% the previous two. 
%Usage: blinds( thing1, thing2, stripe, cat)
% 
end
