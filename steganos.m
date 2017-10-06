% Function Name: steganos.m
% Input  (1): - (char) The file name of an image that has a secret message 
%                      encoded within it 
% Output (1): - (char) The decoded message from the image
%

%

function [ ah ] = steganos( wth )
wth=imread(wth); %read in the image
[eh uh huh]=size(wth); %find the size
mmm=[]; %create a dummy vector
for x=1:eh %for every row
    for y=1:uh %for every column
        for z=1:huh %for every layer
            
            pixel=wth(x, y, z); %get the value color
            pixie=double(pixel); % convert to number from uint8
            wowzer=dec2bin(pixie); %convert to binary
            mmm=[mmm wowzer(end)]; %store the last binary digit
        end
    end
end
hmm=[]; %create a dummy vector
while ~isempty(mmm) %while there is still binary code to go through
%     if mod(length(mmm),8)==0
        number=bin2dec(mmm(1:8)); %convert the first 8 numbers to numbers
        letter=char(number); %convert the number to its char value
        hmm=[hmm letter]; %store it
        mmm(1:8)=[]; %delete that letter
        if number==0 %if the 0 stop should ever pop up...
            break %stop
%         end
    end
end

ah=hmm(1:end-1); %output the final message minus the stop value. 
%Function to read in an image and return the message hidden with the pixel
%color values. Reference
%       http://www.garykessler.net/library/steganography.html
% For how steganograms work, please. 
%Usage: function [ ah ] = steganos( wth )


end

