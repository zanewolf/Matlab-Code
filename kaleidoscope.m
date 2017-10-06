

function kaleidoscope( plain)
mirror=imread(plain); %read in the image
[r c l]=size(mirror); %find the size of the image
if r~=128 %if row size is not 128
    changer=128./r; %find the number needed to reduce the rows to 128
    b = round(linspace(1,r, ceil(r.*changer))); %stretch the vec
    mirror=mirror(b, :, :); %index the new vec with the new row numbers

end
if c~=128 %same for columns
    changer=128./c;
    d=round(linspace(1,c, ceil(c.*changer)));
    mirror=mirror(:,d, :);

end
    multimirror=flipper(mirror); %call the helper function
    [r c l]=size(multimirror); %double check the size
    megamirrors=flipper(multimirror); %recall the helper function
    [r c l]=size(megamirrors); %double check the size
    newfile=['many_' plain]; %create the new file name
    imwrite(megamirrors, newfile, 'png'); %write to the new file name
    
    
    
    
    function flipped=flipper(single) %helper function
        original=single; %create dummy pic
        topright=single(:, end:-1:1, :); %flip the picture across the columns
        bottomleft=single(end:-1:1, :, :); %flip the picture across the rows
        bottomright=single(end:-1:1, end:-1:1, :); %flips across columns and rows
        flipped = [original topright; bottomleft bottomright]; %concatenate
    end
%  Function kaleidoscope to take in an image of any size, resize it to 128x128 pixels
%  and then flip the image horizontally, vertically, diagonally, and then concatenate 
% the four resulting images into one. It will then do the process again, resulting
% in an 8-facet picture of size 512x512. 
% Usage: function kaleidoscope( plain)

end
