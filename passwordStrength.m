function [ mighty ] = passwordStrength( zeus )
zeus = double(zeus); %converts zeus to its ascii values
small = zeus(zeus>=97 &zeus<=122); %determines whether zeus contains any values
%corresponding to lower case letters
if length(small)>=1
    ptA =1 ; %zeus has a lowercase letter, it gets a pt
else 
    ptA =0; %zeus lacks lowercase letters, no points for you!
end
large = zeus(zeus>=65 & zeus<=90); %determines if zeus has any uppercase letters
if length(large)>=1
    ptB = 1; %yay, it does
else 
    ptB=0; %no points for you!
end
nums = zeus(zeus>=48 & zeus<=57); %determines if zeus contains any numbers
%between 1 and 9
if length(nums) >=1
    ptC = 1; %yay, another pt!
else
    ptC = 0; %no points for you!
end
space= zeus (zeus ==32); %determines if zeus contains any spaces
if length(space) >=1
    ptF  = 1; %Oh, snap! this won't work!!
else 
    ptF = 0; %Okay, cool, no spaces. 
end
byfours = floor(length(zeus)./4); %determines if the length of zeus is a
%multiple of four and rounds down to the closest integer. For example, if
%zeus had 10 elements, byfours = 2.5. By rounding, byfours will only read
%as 2, allowing zeus to get the browniepoints for having 8, but not 10
%elements. 
if byfours == 1 %eh, maybe a little too short
    ptD=1;
elseif byfours == 2 %better
    ptD=2;
elseif byfours == 3 %pretty decent size, 12 elements, right? 
    ptD = 3;
elseif byfours == 4 %wow, you're good. 
    ptD = 4;
elseif byfours==5 %This is long, I hope you're a good typer and that your
    %password isn't case sensitive. 
    ptD = 5;
elseif byfours ==6 %Jeeze, paranoid much? 
    ptD = 6;
elseif byfours ==7%You should work for the CIA or something. 
    ptD = 7;
elseif byfours ==8%At this point, just stop recording stuff electronically. 
    %If you can remember a password 32 characters long, you can remember
    %everything! 
    ptD = 8
else
    ptD = 0; %Error, computer won't let you have a password of no elements, 
    %and I pity the person that has to keep a password more than 32
    %elements long. No points for you! 
end
symbols = zeus(zeus >=33 & zeus<=47 &zeus>=58 &zeus<=64 &zeus>=91 &zeus<= 96 &zeus>=123 &zeus <=126);
%determines if zeus contains any elements that are not numbers between 1
%and 9, letters between 'a' and 'z', letters between 'A' and 'Z', and
%spaces. 
if length(symbols) >=1 
    ptE = 1; %Sweet, symbols! 
else
    ptE = 0; %No points for you! 
end
browniepts = [ptA ptB ptC ptD ptE ptF]; %Let's see how you did by adding your points! 
    if ptF==1
        mighty ='Invalid Password'; %Well, you can't have any spaces--ERROR! 
    elseif sum(browniepts) ==1
        mighty = 'Very Weak'; %Your facebook is hacked often. 
    elseif sum(browniepts) ==2
        mighty = 'Weak'; %your sibling hacks your facebook often. 
    elseif sum(browniepts) ==3
        mighty = 'Medium'; %hackers hack your facebook often. 
    elseif sum(browniepts) ==4
        mighty = 'Strong'; %you're relatively safe, unless you have a mortal
        %enemy who is also a very good hacker. In that case, your facebook
        %is hacked, but maybe not often. 
    elseif sum(browniepts) ==5
        mighty = 'Very Strong'; %You're good. 
    elseif sum(browniepts) >5
        mighty = 'Impossible'; %You're either very good or very paranoid.
    else 
        mighty = 'Invalid Password'; %ERROR, try a new password. 
    end
    %Function to determine strength of a password. It takes into account
    %the existence of any lowercase letters, uppercase letters, numbers,
    %the size, symbols, and spaces, and assigns a strength rating based on the
    %existence of these parameters. Note, if spaces exist, the password
    %will read as invalid. If nothing exists, the password will read as
    %invalid. Size rating is based on elemental sets of 4 (i.e., a password
    %four elements long gets 1 point, eight gets 2, twelve gets 3, etc).
    %However, a password longer than 32 characters won't get any points. 
   % Usage: function [ mighty ] = passwordStrength( zeus )
% zeus = double(zeus); %converts zeus to its ascii values
% small = zeus(zeus>=97 &zeus<=122); %determines whether zeus contains any values
% %corresponding to lower case letters
% if length(small)>=1
%     ptA =1 ; %zeus has a lowercase letter, it gets a pt
% else 
%     ptA =0; %zeus lacks lowercase letters, no points for you!
% end
% large = zeus(zeus>=65 & zeus<=90); %determines if zeus has any uppercase letters
% if length(large)>=1
%     ptB = 1; %yay, it does
% else 
%     ptB=0; %no points for you!
% end
% nums = zeus(zeus>=48 & zeus<=57); %determines if zeus contains any numbers
% %between 1 and 9
% if length(nums) >=1
%     ptC = 1; %yay, another pt!
% else
%     ptC = 0; %no points for you!
% end
% space= zeus (zeus ==32); %determines if zeus contains any spaces
% if length(space) >=1
%     ptF  = 1; %Oh, snap! this won't work!!
% else 
%     ptF = 0; %Okay, cool, no spaces. 
% end
% byfours = floor(length(zeus)./4); %determines if the length of zeus is a
% %multiple of four and rounds down to the closest integer. For example, if
% %zeus had 10 elements, byfours = 2.5. By rounding, byfours will only read
% %as 2, allowing zeus to get the browniepoints for having 8, but not 12
% %elements. 
% if byfours == 1 %eh, maybe a little too short
%     ptD=1;
% elseif byfours == 2 %better
%     ptD=2;
% elseif byfours == 3 %pretty decent size, 12 elements, right? 
%     ptD = 3;
% elseif byfours == 4 %wow, you're good. 
%     ptD = 4;
% elseif byfours==5 %This is long, I hope you're a good typer and that your
%     %password isn't case sensitive. 
%     ptD = 5;
% elseif byfours ==6 %Jeeze, paranoid much? 
%     ptD = 6;
% elseif byfours ==7%You should work for the CIA or something. 
%     ptD = 7;
% elseif byfours ==8%At this point, just stop recording stuff electronically. 
%     %If you can remember a password 32 characters long, you can remember
%     %everything! 
%     ptD = 8
% else
%     ptD = 0; %Error, computer won't let you have a password of no elements, 
%     %and I pity the person that has to keep a password more than 32
%     %elements long. No points for you! 
% end
% symbols = zeus(zeus >=33 & zeus<=47 &zeus>=58 &zeus<=64 &zeus>=91 &zeus<= 96 &zeus>=123 &zeus <=126);
% %determines if zeus contains any elements that are not numbers between 1
% %and 9, letters between 'a' and 'z', letters between 'A' and 'Z', and
% %spaces. 
% if length(symbols) >=1 
%     ptE = 1; %Sweet, symbols! 
% else
%     ptE = 0; %No points for you! 
% end
% browniepts = [ptA ptB ptC ptD ptE ptF]; %Let's see how you did by adding your points! 
%     if ptF==1
%         mighty ='Invalid Password'; %Well, you can't have any spaces--ERROR! 
%     elseif sum(browniepts) ==1
%         mighty = 'Very Weak'; %Your facebook is hacked often. 
%     elseif sum(browniepts) ==2
%         mighty = 'Weak'; %your sibling hacks your facebook often. 
%     elseif sum(browniepts) ==3
%         mighty = 'Medium'; %hackers hack your facebook often. 
%     elseif sum(browniepts) ==4
%         mighty = 'Strong'; %you'rer relatively safe, unless you have a mortal
%         %enemy who is also a very good hacker. In that case, your facebook
%         %is hacked, but maybe not often. 
%     elseif sum(browniepts) ==5
%         mighty = 'Very Strong'; %You're good. 
%     elseif sum(browniepts) >5
%         mighty = 'Impossible'; %You're either very good or very paranoid.
%     else 
%         mighty = 'Invalid Password'; %ERROR, try a new password. 
%     end

end

