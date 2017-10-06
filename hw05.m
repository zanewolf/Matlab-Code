%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : R. Zane wolf
% GT Email     : zwolf@gatech.edu
% Homework     : hw05
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
%   - hw05.m
%   - ABCs_conditionals.m
%   - ABCs_pretest_hw05.p
%
% Files to submit:
%   - hw05.m
%   - ABCs_conditionals.m
%   - friday.m
%   - pokemonBattle.m
%   - reMixUp.m
%   - passwordStrength.m
%   - magicAlphabetChecker.m
%   - dateMagic.m
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
% Run 'ABCs_pretest_hw05.p'
% >> ABCs_pretest_hw05()
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   4.5 Conditionals
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Homework Video of the Week:
%
% http://www.youtube.com/watch?v=dsU3B0W3TMs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%==========================================================================
% PROBLEM 1.  Which Seat Can I Take?
%--------------------------------------------------------------------------
%
% Function Name: friday
% Inputs  (2): - (double) the number of open seats in the front seat
%              - (double) the number of open seats in the back seat
% Outputs (1): - (char) a string telling which seat you can take
%
% Function Description:
%	Rebecca Black is having trouble determining which seat she can take in
%	her friend's car. Fortunately, we can use MATLAB to help her choose!
%
%   Write a function called "friday" that takes in two inputs: the number
%   of seats open in the the front seat and the number of seats open in the
%   back seat. The function should then check to see if there are any open
%   seats in the front seat, and if so return the string 'Kickin' in the
%   front seat.' If there are no seats in the front seat, then the function
%   should check to see if there are any seats available in the back seat.
%   If so, then the function should return 'Sittin' in the back seat.' If
%   there are no seats available, then the function should return 'Which
%   seat can I take?'
%
% Notes:
%   - The number of open seats in the front seat will be either 0 or 1.
%   - The number of open seats in the back seat will be between 0 and 3.
%
% Hints:
%	- Use two apostrophes to include a single apostrophe inside of a
%	  string (as shown in the test case outputs).
%
% Test Cases:
%
%   seat1 = friday(1, 1);
%       seat1 => 'Kickin'' in the front seat.'
%
%   seat2 = friday(0, 2);
%       seat2 => 'Sittin'' in the back seat.'
%
%   seat3 = friday(0, 0);
%       seat3 => 'Which seat can I take?'
%       
%==========================================================================
% PROBLEM 2.  I Choose You! 
%--------------------------------------------------------------------------
%
% Function Name: pokemonBattle
% Inputs  (2): - (char) a string containing the Pokemon that you are using
%              - (char) a string containing the Pokemon that your rival is
%                       using
% Outputs (1): - (char) a string telling which player has the type
%                       advantage
%
% Function Description:
%	You have just chosen a starter Pokemon, and now your rival wants to
%	battle! You want to determine which of your Pokemon has the type
%	advantage over the other, so you use MATLAB to help you in this
%	endeavor.
%
%   Write a function called "pokemonBattle" that takes in a string containing
%   the Pokemon that you are using and a string containing the Pokemon that
%   your rival is using. The strings will only contain 'Charmander',
%   'Squirtle', or 'Bulbasaur'. The function should then output a string
%   describing which person has the type advantage. If you have the type
%   advantage, then the string should say 'No sweat!', but if your rival
%   has the type advantage, then the string should say 'This will be
%   difficult...'
%
%   For those who are unfamiliar with Pokemon, the type advantages are as
%   follows:
%
%   - Charmander has a type advantage over Bulbasaur
%   - Bulbasaur has a type advantage over Squirtle
%   - Squirtle has a type advantage over Charmander
%
% Notes:
%   - You and your rival will never have the same Pokemon, i.e. the inputs
%     will never be the same string.
%
% Test Cases:
%
%   poke1 = pokemonBattle('Squirtle', 'Bulbasaur');
%       poke1 => 'This will be difficult...'
%
%   poke2 = pokemonBattle('Charmander', 'Bulbasaur');
%       poke2 => 'No sweat!'
%       
%==========================================================================
% PROBLEM 3.  Re-Mixing It Up
%--------------------------------------------------------------------------
%
% Function Name: reMixUp
% Inputs  (3): - (char) A string of length n
%              - (char) A string of length m
%              - (double) A number indicating where to start the mixing
% Outputs (1): - (char) The mixed up string
% 
% Function Description:
%   Write a function called "reMixUp" that takes in two strings and a 
%   double, then intertwines them based on the following steps and rules:
%
%   1. If one of the strings is at least twice the length of the other,
%      double the shorter string. For example, if 'CS' is the shorter
%	   string and the other string has a length of four, turn 'CS' into
%	   'CSCS'
%
%   2. If the shorter string is still shorter after doubling it (i.e. the
%	   longer string was greater than twice the length of the shorter string),
%	   then fill the remaining spots with zeros until the lengths match. For
%	   example, 'AA' and 'BBBBB' would become 'AAAA0' and 'BBBBB'
%
%   3. If the longer string is less than twice the length of the shorter
%	   string, then fill the shorter string with '0's (zeros of class
%	   char) until the lengths match. One example of this would be
%	   'Comp' and 'Sci'. 'Sci' is the shorter string but if it were
%	   doubled ('SciSci') then it would be longer than 'Comp'. Instead,
%	   turn it into 'Sci0' so the lengths match.
%
%   4. If the strings have the same length, leave them alone.
%
%   Once the strings have the same length intertwine them as follows:
%   
%   1. The first string gets spaced out until it is doubled in length by
%      placing a space after each letter. 
%      For example, 'hello' becomes 'h_e_l_l_o_'. (The underscores will be
%      refered to as spaces.)
%
%   2. The second string will be placed into each of the new spaces. 
%
%   3. The third input tells you where to start placing the second sting.
%      For example, if the second string is 'world' and the third input is
%	   3, that means you have to start placing the string 'world' into
%	   the spaces starting at the third space (between the two L's) and
%	   wrap around. The resulting string would be 'hledlwloor'
%
%   4. Return the resulting string.
%
% Notes:
%   - Yes, this looks suspiciously like a problem from Homework 04, except
%	  with conditionals. If you decide to use your code from Homework 04,
%     be sure to include it in the submission files.
%   - The third input will not be more than the length of the longest
%     string.
%   - The longer string can either be the first OR second input.
%
% Test Cases:
%   mixed1 = reMixUp('car','wash', 3);
%       mixed1 => 'csahrw0a'
%
%   mixed2 = reMixUp('wash', 'car', 3);
%       mixed2 => 'wra0scha'
%
%   mixed3 = reMixUp('computer' , 'cs', 1);
%       mixed3 => 'ccosmcpsu0t0e0r0'
%
%   mixed4= reMixUp('bye', 'bye', 2);
%       mixed => 'beybey'
%
%==========================================================================
% PROBLEM 4.  Hackz0rz
%--------------------------------------------------------------------------
%
% Function Name: passwordStrength
% Inputs  (1): - (char) a string representing a password 
% Outputs (1): - (char) the strengh of password 
%
% Function Description:
%   Given a string representing a password, write a function called
%   "passwordStrength" that evaluates and returns the strength of the
%   password.
%
%   Password strength is a measure of the effectiveness of a password in
%   resisting guessing and brute-force attacks. In our program, we will
%   define it as a function of the length and the variation of characters
%   present in the password. The greater the length and variability, the
%   stronger the password. By defining point values for these and other
%	characteristics, we can create a metric for password strength and use
%	it to write our program.
%
%   Each of the following characteristics is worth 1 point.
%
%       - One or more numbers exist in the string. (0,1,2,3...9)
%       - One or more lower case letters exist (a,b,...,z)
%       - One or more upper case letters exist (A,B,...,Z)
%       - One or more of following symbols exists: @,#,$,_,-
%       - Every set of four characters in length. For instance, if
%         the password is eight characters, it gets 2 points. However, if
%         the password is nine characters, it still only gets 2 points. 
% 
%   Your output depends on the number of points accumulated
%   points. For each of the following point values, return this string:
%
%       1 pt  => 'Very Weak'
%       2 pt  => 'Weak'
%       3 pt  => 'Medium'
%       4 pt  => 'Strong'
%       5 pt  => 'Very Strong'
%       >5 pt => 'Impossible'
%  
%   If the password contains any spaces, return the string
%	'Invalid Password'.
%
% Hints:
%   - You might find the floor() function useful.
%
% Test Cases:
%   strength1 = passwordStrength('ilovecs');
%       strength1 => 'Weak'
%
%	strength2 = passwordStrength('CS1371');
%		strength2 => 'Medium'
%
%   strength3 = passwordStrength('I_l@v#_C$-1371');
%		strength3 => 'Impossible'
%
%   strength4 = passwordStrength('I Love CS 1371');
%		strength4 => 'Invalid Password'
%
%==========================================================================
% PROBLEM 5.  I've Got the Magic in Me
%--------------------------------------------------------------------------
%
% Function Name: magicAlphabetChecker
% Inputs  (1): - (char)    a character array of unknown dimensions  
%                          containing a mixture of uppercase and lowercase 
%                          letters
% Outputs (1): - (logical) a true or false on whether the array is a 
%                          magic alphabet square
%
% Function Description:
%	Write a function called "magicAlphabetChecker" that takes an input
%	character array of unknown dimensions and returns a true or false on
%	whether the array is a magic alphabet square. A normal magic square is
%   an array that all the rows, columns, and diagonals sum to the magic
%	constant:
%
%                                    N(N^2+1)
%               Magic Constant =    ---------
%                                       2
%
%   Where N is the dimension size of a square array. However, we will be
%	using a slightly different set of criteria for our magic character
%	arrays. A character array will be defined as a magic alphabet square
%	if and only if it satisfies all of the following conditions:
%
%		1. The array is square, i.e. it must have dimensions of NxN.
%
%		2. Assuming the dimensions are NxN, the array only contains the
%          letters from 'A' to char('A'+ N^2 - 1). This means the array
%          should be made up of all the ASCII values from 'A' to char('A' +
%          N^2 - 1). There should also not be any letters that are
%          repeated. For example, if the input array is a 3x3 array, every
%          letter from 'A' to 'I' must be represented exactly once in the
%          character array.  
%
% 		3. The sum along the rows, columns, and diagonals all equal to
%          N*('A'-1) + (N^3 + N)/2. For example, given a 3x3 character
%          array converted to all uppercase letters that passed the
%          previous two requirements, the sum to check each row, column,
%          and diagnoal, will be 3*(65-1)+(3^3+3)/2 = 207
%
%   In all cases, the letter case of any character in the input array does
%   not matter when determining whether it is a magic alphabet square. An
%   uppercase 'A' will treated as equivalent to 'a' in this function.
%
% Notes:
%   - The input character array is not guaranteed to be a square.
%   - Since case does not matter in this function, it is necessary to
%     convert all input characters either to uppercase or lowercase. Beware
%     that, if you choose to convert to all lowercase, that you substitute
%     a lower case 'a' in place of the uppercase 'A' in steps 2 and 3.
%   - You may *NOT* use the upper() or lower() functions.
%
% Hints:
%   - Consider how a numeric magic square functions with the built-in
%     MATLAB function magic(). A discovery of the relationship between the
%     numbers in the numeric magic square n the magic alphabet square may
%     aid in solving the problem.
%   - Beware of forgetting to specify a default return value for the output
%     if you choose to use nested conditionals.
%   - To check to see if all the letters in the square exist, consider
%     linearlizing the array. 
%   - The sort() function may be useful. 
%
% Test Cases:
%   isMagic1 = magicAlphabetChecker(['HCD'; 'AEI'; 'FGB']);
%	    isMagic1 => true 
%
%	isMagic2 = magicAlphabetChecker(['Mnop'; 'AbCD'; 'EfGh'; 'ijKL']);
%		isMagic2 => false
%
%	isMagic3 = magicAlphabetChecker(['Fe'; 'dC'; 'ab']);
%		isMagic3 => false
%
%   isMagic4 = magicAlphabetChecker(['aaaa';'bbbb';'cccc';'dddd']);
%		isMagic4 => false
%
%	isMagic5 = magicAlphabetChecker(['QXAho';'wEGnP';'dfmtv';'JLSuC';...
%       'kRYBi']');
%		isMagic5 => true
%
%==========================================================================
% PROBLEM 6.  You Snap Your Fingers and TADA!
%--------------------------------------------------------------------------
%
% Function Name: dateMagic
% Inputs  (2): - (char) A date in the format 'month/day/year'
%              - (char) The name of a company
% Outputs (1): - (char) Sentence containing the day the company was founded
%
% Function Description:
%   Here at Georgia Tech, we have some pretty cool websites that we are
%   sure you guys use (or will be using) very often. However, some of the
%   executives from these websites would like to remember what day of the
%	week their website went live. As an enterprising intern, you decide to
%	solve the problem using MATLAB. 
%
%   Write a function called "dateMagic" that takes a string containing the
%   date is mm/dd/yyyy format and a company, and returns a string that
%   says:
%
%           '<company name> was founded on a <day of the week>.'
%
%   There is a magic formula that you discovered that can help you
%   determine the day of the week given any date. The secret steps to this
%   magic are:
%
%   Given the date (2/12/1978, for example):
%
%   1. Drop the first two digits in the year (1978 => 78)
%
%   2. Divide this number by 4 and drop the remainder 
%      (78 / 4 = 19  with a remainder of 2) 
%
%   3. Add this answer to last two digits of the year  (19 + 78 = 97)
%
%   4. Add the day of the month to this total (97 + 12 = 109)
%
%   5. From List 1 below, add the value of corresponding to the month 
%      (February = 3,  109 + 3 = 112)
%
%   6. If the year is in the 2000s, subtract 1, if the year is in the
%      1900s, do nothing. (112)
%
%   7. Divide this total by 7 (112 / 7 = 16 with a remainder of 0)
%
%   8. Compare the remainder with List 2 to see which day it is. 
%
%   List 1: Months
%       Jan: 0 
%       Feb: 3
%       Mar: 3 
%       Apr: 6 
%       May: 1
%       Jun: 4 
%       Jul: 6 
%       Aug: 2
%       Sep: 5 
%       Oct: 0
%       Nov: 3 
%       Dec: 5
%
%   List 2: Remainders
%       0: Sunday
%       1: Monday
%       2: Tuesday
%       3: Wednesday
%       4: Thursday
%       5: Friday
%       6: Saturday
%
% Test Case 1:
%	date = '2/8/2011'
%   company = 'www.swarmbooks.com'
%	day = dateMagic(date,company)
%	day -> 'www.swarmbooks.com was founded on a Tuesday.'
%
% Test Case 2:
%	date = '1/3/1975'
%   company = 'www.onlyattech.net'
%	day = dateMagic(date,company)
%	day -> 'www.onlyattech.net was founded on a Friday.'
%
% Test Case 3:
%	date = '4/16/2008'
%   company = 'www.campuscarriers.com'
%	day = dateMagic(date,company)
%	day -> 'www.campuscarriers.com was founded on a Wednesday.'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.