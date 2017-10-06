
function outmatrix=decodeImage(file)
img1=imread(file); %read in the file
img2=img1;%create a dummy image
mask=mod(img1(:, :, 1), 2)==0;%mask to locate all even values
a=cat(3, mask, mask, mask);%dummy 3d array of all those locations in all three planes
img2(a)=0; %set those corresponding points equal to zero
mask2=mod(img1(:, :, 1), 2)~=0; %create mask to locate all odd values
b=cat(3, mask2, mask2, mask2);%array
img2(b)=255;%inde and change value to max
outmatrix=img2;%output the matrix. 

%Function decodeImage takes in a picture file and runs through all the red pixels
%If the red pixels are even, then the new pixel will be black. All other
%pixels are rewritten as white.
%Usage: outmatrix=decodeImage(file)
end
