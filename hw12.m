%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw12
% Course       : CS1371
% Instructor   : Smith
% Lecture Time : MWF 4:00
% TA's Name    : Prahba Viswanathan
% Section      : D01
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                
%
% Files provided with this homework:  
%   - hw12.m
%   - abcs_pretest1.png
%   - abcs_pretest2.png
%   - america.png
%   - america_msg.png
%   - harry.png
%   - idealhero.png
%   - luke.png
%   - red.png
%   - scooby.png
%   - scrappy.png
%   - soln1.png
%   - soln2.png
%   - soln3.png
%   - turquoise.png
%   - andromeda.png
%   - atlanta.png
%   - decoded1.png
%   - decoded2.png
%   - decoded3.png
%   - puppy.png
%   - testcase1.jpg
%   - testcase1_sol.jpg
%   - testcase2.jpg
%   - testcase2_sol.jpg
%   - flower.png
%   - falcons.png
%   - falcons_msg.png
%   - gtlogo.png
%   - gtlogo_msg.png
%   - many_flower_example.png
%   - many_tree_example.png
%   - tree.png
%   - ABCs_images.m
%
% Files to submit:
%   - hw12.m
%   - ABCs_images.m
%   - blinds.m
%   - decodeImage.m
%   - ugaPrank.m
%   - kaleidoscope.m
%   - steganos.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%==========================================================================
% COMMENTING
%--------------------------------------------------------------------------
%
% Whenever you program, it is always a good idea to comment your code.
% Commenting helps you keep track of what you are attempting to code, and 
% it helps others in understanding why you wrote various lines of code.  
% Since the AutoGrader does not give partial credit for attempting a 
% problem, we have added a commenting system to give some incentive to at 
% least attempt each problem. From now on, when you write a solution to a
% problem, you should comment your code and explain what you were 
% attempting to code. Some good places to comment would be sections of your
% code that directly relate with your algorithm. However, don't comment
% every line of code. Instead comment the lines of code that are either  
% difficult to understand or are important to solving the problem. 
%
% Commenting will purely be for extra-credit purposes, so if you don't want
% to comment your code, you don't have to. Your Section TA will grade the
% comments from each Homework and will keep track of your commenting points
% throughout the semester. Commenting points will not change the score you
% receive on a homework assignment, but they will be factored into your
% homework average at the end of the semester. 
%
% Finally, if you come to help desk, you are expected to have your code
% commented. If a TA sees that your code is not commented, he or she will
% move on to another student until you comment your code.
%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is in an m-file starting with ABCs_.  Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% Once you are done, you can test your ABC file by running the pretest at
% the command prompt, like so:
%
%  >> ABCs_pretest_hw12
%
% Alternatively, you can right button click the file in the Current Folder
% window and click "Run".  You cannot open the file by double clicking it.
% If you have problems running the pretest, then you probably need a newer
% version of MATLAB.  Newer versions of MATLAB are available free to you.
% Please read David Smith's announcement "Matlab 'Free' Access" for further
% information.  Be sure the pretest and your ABC file are in the same
% directory.
%
% The pretest is simply an aide to help you test your code.  While we
% strive to supply a quality pretest file for you to use, a sucessful
% result with a pretest file does not ensure awarded points on the
% homework.  The pretest is merely a guide to help you complete the ABCs.
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   13.  Images
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
% For this homework a p-file called "compareImage" has been included. You
% can use this function to compare your output images to the provided
% solution images. The function takes in the uint8 array of the images you
% want to compare, and returns a logical true or false if the images match,
% and a message outlining the error if they do not match. An example call
% is shown below:
%
%           [match message] = compareImage(img_arr1, img_arr2)
% 
% Good luck! 
%
%% ========================================================================
% PROBLEM 1.  Blind Fury 
%--------------------------------------------------------------------------
%
% Function Name: blinds
% Inputs  (4): - (char) the filename of an image to be manipulated
%              - (char) the filename of another image to be manipulated
%              - (double) the width (in pixels) of the bands to be created
%                         in the output image
%              - (char) the filename to which the output image should be
%                       written
% Outputs (0): - none
%
% Output files (1): - image file with blinds effect applied as described
%                     below
%
% Function Description:
%   Write a function named "blinds" that takes in the filenames of two
%   images, a bandwidth (in pixels), and another filename to which the new
%   image created by the funtion should be written. The function should 
%   create a new image by alternating sections of the two input images in 
%   vertical bands. An example sketch of the resulting "blinds" effect is 
%   shown here:
%
%   Input Image 1:                      Input Image 2:
%   A A A B B B C C C D D D             W W W X X X Y Y Y Z Z Z
%   A A A B B B C C C D D D             W W W X X X Y Y Y Z Z Z
%   A A A B B B C C C D D D             W W W X X X Y Y Y Z Z Z
%
%                           Output Image:
%                       A A A X X X C C C Z Z Z
%                       A A A X X X C C C Z Z Z
%                       A A A X X X C C C Z Z Z
%
%   As illustrated in the example, the first band in the new image should
%   be from the first image, the second band from the second image, the
%   third band from the first image, and so on.  Also as shown in the 
%   example, each band in the new image should be identical to the band
%   *at the same position* in the input image being used. The pixel width 
%   of all the bands is given by the value in the function's third input.
%
%   Notes:
%   - The two input images are guaranteed to be the same size.  If the
%     blinds effect is applied correctly, the new image should also be the
%     same size as the other two.
%   - The bandwidth is guaranteed to be given so that the new image is made
%     up of a whole number of bands (i.e. There will be no partial band at
%     the end of the new image).
%   - The bandwidth is *not* guaranteed to be given so that there will be
%     an even number of bands in the new image. 
%   - The number of bands is guaranteed to be greater than or equal to 2
%
% Test Cases:
%	  
%   blinds('turquoise.png', 'red.png', 108, 'stripes.png')
%       => 'stripes.png' should look like 'soln1.png'
%
%   blinds('scooby.png', 'scrappy.png', 4, 'smartpups.png')
%       => 'smartpups.png' should look like 'soln2.png'
%
%   blinds('harry.png', 'luke.png', 200, 'idealhero.png')
%       => 'idealhero.png' should look like 'soln3.png'
%
%% ========================================================================
% PROBLEM 2.  Spy vs Spy
%--------------------------------------------------------------------------
% Function Name: decodeImage
% Inputs  (1): - (char) string containing a filename of an image
% Outputs (1): - (uint8) image matrix of the decoded image
%
% Function Description:
% 	Write a function called "decodeImage" that takes in a string containing
% 	the filename of a picture that has been encoded with a secret image.
% 	Given an this image, generate a new black and white image that is black
% 	where the original image red layer is even. In other words, whereever
% 	pixels from orignal image have red value that's even, set the
% 	corresponding pixel of the new image to black. Everywhere else will be
% 	white. The function should then return the 3D uint8 array of the
% 	decoded image. 
%
% Hints: 
%   - You may find the mod() and cat() functions useful. 
%
% Test Cases:
%
%   decoded1 = decodeImage('atlanta.png');
%   imshow(decoded1);
%     => should look like 'decoded1.png'
%
%   decoded2 = decodeImage('puppy.png');
%   imshow(decoded2);
%     => should look like 'decoded2.png'
%
%   decoded3 = decodeImage('andromeda.png');
%   imshow(decoded3);
%     => should look like 'decoded3.png'
%
%% ========================================================================
% PROBLEM 3.  GOTCHA! AND TO HELL WITH GEORGIA TOO!
%--------------------------------------------------------------------------
% Function Name: ugaPrank
% Inputs  (1): - (char)  A filename of an image
% Outputs (2): - (uint8) An uint8 array containing the modified image
%
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
%
%   Test Cases:
%    edited1 = ugaPrank('testcase1.jpg')
%      => should look like 'testcase1_sol.jpg'
%
%    edited2 = ugaPrank('testcase2.jpg')
%       => should look like 'testcase2_sol.jpg'
%
%% ========================================================================
% PROBLEM 4.  Look at the Pretty Colors! 
%--------------------------------------------------------------------------
%  Function Name:  kaleidoscope
%   Inputs  (1): - (char)  A filename of an image
%   Outputs (0): -  None
%
%   Output Files (1) - The kaleidoscope version of image
%
%  Function Description:
%  The original Kaleidoscope was a tube containing a series of mirrors
%  that produced beautiful, replicated images of beads in the bottom of 
%  tube.  See Wikiledia for more details.
%  The object of this exercise is to replicate the functionality of the
%  kaleidoscope using MATlAB's image processing tools.
%
%  Directions:
%   1. Read the image file and shrink or stretch that image to be exactly
%      128x128 pixels (call this the original image)
%   2. Now, build a composite 256x256 image where:
%      a. the top left quadrant is the original image
%      b. the top right quadrant is the original flipped horizontally
%      c. the bottom left quadrant is the original flipped vertically
%      d. the bottom right quadrant is the original flipped horiziontally
%         and vertically
%   3. Now, build a composite 512x512 image starting with your new
%      256x256 image and repeat step 2 for that image.
%   4. Create a file name consisting of 'many_' appended to the front
%      of your original file name and store the new image in that file
%      name.
%
%  Hints: 
%   - You might think about writing a helper function that performs
%     the basic image manipulation in step 2.
%
% Test Cases:
% kaleidoscope('tree.png');
%   => 'many_tree.png' should look like 'many_tree_example.png'
%
% kaleidoscope('flower.png');
%   => 'many_flower.png' should look like 'many_flower_example.png'
%
%% ========================================================================
% PROBLEM 5. spy()
%--------------------------------------------------------------------------
% Function Name: steganos.m
% Input  (1): - (char) The file name of an image that has a secret message 
%                      encoded within it 
% Output (1): - (char) The decoded message from the image
%
% Function Description:
%   The function will take in the filename of an image and then identify
%   the secret message that was hidden in the image. The message was hidden
%   in the image based on the idea of Steganography. To learn how this
%   message was encoded, you can read up on steganography at:
%
%       http://www.garykessler.net/library/steganography.html
%
% Some Interesting Background Information:
%   Steganography is the art and science of writing hidden
%   messages in such a way that no one, apart from the sender and intended
%   recipient, suspects the existence of the message, a form of security 
%   through obscurity (Wikipedia).
%
%   Steganography includes the concealment of information within computer
%   files. In digital steganography, electronic communications may include
%   steganographic coding inside of a transport layer, such as a document 
%   file, image file, program or protocol. Media files are ideal for 
%   steganographic transmission because of their large size. As a simple 
%   example, a sender might start with an innocuous image file and adjust 
%   the color of every 100th pixel to correspond to a letter in the 
%   alphabet, a change so subtle that someone not specifically looking for 
%   it is unlikely to notice it.
%
%   If you have heard about the Russian Spy Ring that was busted last
%   summer, then it might interest you to know that one of the ways they
%   communicated with each other was to use steganography to encode
%   messages in image files that they would later upload to the internet
%   (Ars Technica). 
%
%   Warning: 
%   - Encoding and Decoding is slightly complicated, so this explanation is
%   long in comparison to most problem statements. Please read all of it.
%
%   The actual method on encoding/decoding the string is based on the idea 
%   that all values in a computer are actually represented in binary.
%   Specifically, anything, whether it is a character, a number, or a pixel
%   value are all represented by a sequence of 1s and 0s.
%
%              Example: The letter 'a' -> 01100001
%                       The number 44 -> 00101100
%
%   When encoding a message string, the string is broken down into its
%   individual characters. Then, each character is converted to into an 
%   8-bit binary value. For example, if the first letter of the string was 
%   'a', then 'a' is translated into 01100001. If the second letter was 
%   'd', then 'd' is translated into 01100100. 
%
%   Each bit (i.e. each 1 or 0) in the binary string is then encoded into
%   the image. To understand how this done, one should realize that the
%   pixel values can also be represented in binary.
%
%              Example: Red Layer Pixel Value 241 -> 11110001
%
%   Then, to encode the image, take a bit at a time (going from left to 
%   right) from the binary representation of each character in the message.
%   That bit is then stored in the least-significant bit in the binary 
%   value of the pixel (aka the last position of the binary sequence).
%
%              Example: 'a' being encoded. First pixel value is 241.
%                       'a' -> 01100001
%                       241 -> 11110001
%
%  Since the 'a' binary value starts with 0, the last position of pixel
%  value 241 is then changed to 0. That makes the new binary string
%  11110000, which is the pixel value 240. The process is then repeated
%  with the next pixel value in the image, and the next bit of 'a'.
%  The encoding process goes through the RGB values of each pixel (goes
%  across a row at a time) and encodes every bit of every character in the
%  message.
%          Example: RGB values of First Pixel -> (241, 44, 255)
%                   Pixel Values in Binary -> 11110001 00101100 11111111
%                   'a' -> 01100001
%                    Encoded Pixel Binary -> 11110000 00101101 11111111
%                    Encoded Pixel Values -> (240, 45, 255)
%
%   Once all the characters of the message have been encoded into the 
%   image, the binary value 00000000 (aka ascii value 0) is also encoded 
%   into the image. This way, when the image is being decrypted, the 
%   decrypter will know when to stop.
%
%   If you understood the encoding process, then you probably have an idea
%   on how to do the decrypting process. The idea is essentially to build
%   the message back up by going through the pixel values and then taking
%   the last bit of the binary representation of each pixel value. Every
%   time 8 bits are found from the pixel value, those 8 bits are combined
%   together to form a character in the message. This continues until the 8
%   bits are all 0 (i.e. the ascii value 0 is found). 
%           
% Notes:
%   - You might find the dec2bin() and bin2dec() functions useful for this 
%     problem.
%   - Do *not* include the ending char(0) character into the message 
%     string.
%   - If you want to see how these images originally looked (and try to
%     spot the difference), just check out the corresponding gt_logo.png,
%     and falcons.png image files. 
%
% Test Cases:
%   message = steganos('gtlogo_msg.png');
%       message => 'Hi! I bet you did not realize that there was a secret
%                   message encoded in me. I know, this is like some crazy
%                   Da Vinci Code stuff right here.'
%   
%   message = steganos('falcons_msg.png');
%       message => 'Watch me: http://www.youtube.com/watch?v=OlbuWC1fOH0'
%
%   message = steganos('america_msg.png');
%       message => ''
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
