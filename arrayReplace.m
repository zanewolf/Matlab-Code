
function [ plasticsurgery ] = arrayReplace(array1, array2, fat)
mask = array1==fat; %logical index to find where the elements in the array1 equal the fat
implant = array2(mask); %finds the positions in the second array that correspond to the positions in the first array that equaled the specified number
array1(mask) = implant; %replaces the fatty elements in array1 with the elements that corresponded in array2
plasticsurgery = array1; %renames the output as something analogous to a relife elemental replacement


%takes two arrays and a number and replaces all instances of that number 
%in the first array with the corresponding positions of the second array. 
%If the number does not exist in the array, it should just return the 
%original array with no changes. 
%usage: [ plasticsurgery ] = arrayReplace(array1, array2, needle)
%mask = array1==needle;
%c = array2(mask);
%array1(mask) = c;
%plasticsurgery = array1;

end

