% Function Name: ugaPrank
% Inputs  (1): - (char)  A filename of an image
% Outputs (2): - (uint8) An uint8 array containing the modified image
%

function [ haha ] = ugaPrank( hehe )
evil=imread(hehe);
%work on black...
[r c l]=size(evil);
red=evil(:, :, 1);
green=evil(:, :, 2);
blue=evil(:, :, 3);
mask= red(:,:,:)<200; %=blue(:,:,:)<=red(:,:,:)+10 &blue(:,:,:) >=red(:,:,:)-10 &green(:,:,:)<=red(:,:,:)+10 &...
    %green(:,:,:)>=red(:,:,:)-10 &
mask2=red>1.5*max(green(:,:,:), blue(:,:,:));

red(mask)=207;
blue(mask)=59;
green(mask)=181;

red(mask2)=0;
green(mask2)=0;
blue(mask2)=128;

evil(:, :, 1)=red
evil(:, :, 2)=green
evil(:, :, 3)=blue
[r c l]=size(red);
% for x=1:r
%     for y=1:c
%         mask2=evil(x, y, 1)>1.5.*max(evil(x, y, 2), evil(x, y, 3));
%         
%             mask=evil(x, y, 2)<=evil(x, y,1)+10 & evil(x, y, 2)>=evil(x, y, 1)-10 &...
%                 evil(x, y, 3)>=evil(x, y, 1)-10 & evil(x, y, 3)<=evil(x, y, 1)+10;
%             a=mask==1&evil(x,y,1)<200
%             if a==1
%         
%               evil(x, y, 1)=207;
%               evil(x, y, 2)=181;
%               evil(x, y, 3)=59;
%             
%         
%             elseif mask2==1
%             evil(x, y, 1)=0;
%             evil(x, y, 2)=0;
%             evil(x, y, 3)=128;
%         end
%     end
% end

haha=evil;
imshow(evil);
% Function Description:
%   Everyone knows that Tech Students are smarter than U(sic)GA students,
%   and now is your time to prove it. One of your "friends" at UGA was
%   bragging to you about being able to download images from the internet.
%   After all, that is what they learn over there. You however, can do way
%   more than that, and you are going to show them what you can do to their
%   downloaded images. You happen to come across a few of their UGA
%   pictures, and you are going to pull a prank...
%
%	Given the filename of an image file, write a function, "ugaPrank", that
%	reads in the image, and changes the colors according to the following
%	directions:
%
%       1. If the original pixel color is black, switch the pixel color to
%          gold
%       2. If the original pixel color is red, switch the pixel color to
%          navy
%
%   A black pixel is defined by the following definition:
%
%       1. The RGB values are all within a tolerance of 10 from the red
%          layer.  That means if the red value was 100, then the green and
%          blue values of the pixel would need to both be between 90 and 
%          110 in order to count as black.
%       2. The red value of the pixel must be less than 200.
%
%   A red pixel is defined by the following definition:
%
%       1. The red value of the pixel must be 1.5 times greater than both
%           the green value and the blue value of the pixel.  This means
%           that if my green value was 50, and my blue value was 40, then
%           the red value of the pixel must be greater than 75. (green .*
%           1.5 = 75)
%
%   Once you have figured out where your black pixels are and where your
%   red pixels are, you should change those pixels to the following RGB
%   values:
%
%       1. Change all black pixels to gold. Gold is defined by a RGB pixel
%          value of [207, 181, 59].
%
%       2) Change all red pixels to navy. Navy is defined by a RGB pixel
%          value of [0, 0, 128].
%
%   Your output should be an uint8 array of the edited layers.  To test
%   your code, you can do a couple of things. The first thing is the
%   visual check.  Both test cases are provided with output images that 
%   have been run through the solution code.  Your first check is a visual
%   check. The second check is to actually read in the solution image, and
%   compare your output uint8 array to the solution image uint8 array.
%
%   Hints:
%    - You should not use iteration to attempt to go pixel by pixel.  This
%      is highly inefficient and very slow. Consider finding a mask that
%      includes all the target pixels.
%    - Use exactly the definitions given to you for the
%      colors above. If you try to change these definitions, your image
%      will not be the same, and will therefore receive no credit when
%      grading. Use exactly what has been given to you!
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


end
%
%   Test Cases:
%    edited1 = ugaPrank('testcase1.jpg')
%      => should look like 'testcase1_sol.jpg'
%
%    edited2 = ugaPrank('testcase2.jpg')
%       => should look like 'testcase2_sol.jpg'

