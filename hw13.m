%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Zane Wolf
% GT Email     :zwolf@gatech.edu
% Homework     : hw13
% Course       : CS1371
% Instructor   :  Smith
% Lecture Time : MWF  4:00
% TA's Name    : Prahba Viswanathan
% Section      : d01
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
%
% Files provided with this homework:  
%   - hw13.m
%   - ABCs_pretest_hw13.p
%   - Test_Case_1.png
%   - Test_Case_2.png
%   - iodine.fig
%   - iodine.xls
%   - peaksofiodRT.fig
%   - peaksofiodRT.xls
%   - t_table.xls
%   - ABCs_numerical_methods.m
%
% Files to submit:
%   - hw13.m
%   - ABCs_numerical_methods.m
%   - compDiffInt.m
%   - inferPoints.m
%   - simpson.m
%   - uniqueBestFit.m
%   - findPeaks.m
%   - t_test.m
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
%  >> ABCs_pretest_hw13
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


%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   15.  Numerical Methods
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%%
%==========================================================================
% PROBLEM 1. Differentiation and Integration of Coefficients.
%--------------------------------------------------------------------------
%
% Function Name: compDiffInt
% Inputs (1): - (double) vector of coefficients of polynomial
% Outputs(2): - (double) vector of coefficients of derivative of polynomial
%             - (double) vector of coefficients of integral of polynomial
%
% Function Description:
%   Create a function called "compDiffInt" that takes in a vector of 
%   coefficients of a polynomial and generates two outputs. The first 
%   output should be a vector of coefficients of the derivative of the 
%   polynomial. The second output should be a vector of coefficients of the
%   integral of the polynomial. Ignore the constant that appears when
%   taking the integral of the polynomial, i.e. assume that it's zero. For
%   example, if the function was 3x^2 + 1, the input would be [3 0 1]. The
%   derivative and first output would be 6x, expressed as the coefficient
%   vector [6 0]. The integral and second output would be x^3 + x,
%   expressed as the vector [1 0 1 0].
%
% Constraints:
%   - You are *not* allowed to use the built-in functions polyder() or
%     polyint().
%
% Test Case 1:
% [diff1 int1] = compDiffInt([3 0 1 2])
%   diff1 => [9 0 1]
%   int1  => [0.75 0 0.5 2 0]  
% 
% Test Case 2:
% [diff2 int2] = compDiffInt([1 -3 5]) 
%   diff2 => [2 -3]
%   int2  => [0.3333 -1.5 5 0]
%
%%
%==========================================================================
% PROBLEM 2.  Extrapolation and Interpolation 
%--------------------------------------------------------------------------
%
% Function Name: inferPoints
% Inputs  (4): - (double) x values
%              - (double) y values
%              - (double) new x values
%              - (char)   the method to use to find the corresponding y
%                         values
% Outputs (1): - (double) new y values corresponding to the given x values 
%
% Function Description:
%   Given some x and y values, some new x values and a method of
%   interpolation / extrapolation, write a function inferPoints that will
%   return the corresponding y values.  The method given will be one of
%   'extrap', 'interp', or 'spline', and the new x values can be a vector
%   of any length.  If any of the data is invalid for the method of
%   interpolation / extrapolation that you are using, put NaN in that
%   spot.  For example, calling inferPoints([1 2 3], [1 4 9], [1 3 5],
%   'interp') should return [1 9 NaN].
%
% Hints:
%	- For reference, here is the way we will define valid points:
%     'interp' - valid for max(x) >= newx >= min(x)
%     'extrap' - valid for newx > max(x) or min(x) > newx
%     'spline' - valid for all x
%
%   - When given 'extrap', use the 'extrap' option in interp1.
%
% Test Cases:
%   Note that your answers may have trailing zeros (25.000000). This is
%   completely acceptable, and are only removed here for convenience. 
%
%   x = [1 2 3 4];
%   y = [1 4 9 16];
%    
%   newy = inferPoints(x,y,[1.5 2.5 3.5], 'interp');
%       newy => [2.5 6.5 12.5]
%
%	newy2 = inferPoints(x,y,[0 2.5 5], 'extrap');
%       newy2 => [-2 NaN 23]
%
%   newy3 = inferPoints(x,y,[0 1 2 5], 'spline');
%       newy3 => [0 1 4 25]
%
%%
%==========================================================================
% PROBLEM 3.  Taking numerical integrals using Simpson's Rule
%--------------------------------------------------------------------------
%
% Function Name: simpson
% Inputs  (2): - (double) x values
%              - (double) y values
% Outputs (1): - (double) the numerical integral of the x and y values 
%
% Function Description:
%   Given corresponding x and y values, write a function simpson that will
%   calculate the numerical derivative of the function described by the x
%   and y points using Simpson's Rule.  Simpson's Rule can be applied as
%   follows: estimate the integral by using both the midpoint rule and
%   trapezoid rule.  Then, take the weighted average of the results in the
%   following way: (2*midpoint + trapezoid)/3.  That result is a very good
%   approximation of the derivative of f(x).  
%
%   We will implement both the midpoint rule and the trapezoid rule in
%   similar ways.  For both rules, we will find the approximation of F(x)
%   between every adjacent pair of points.  So if we are given x = [1 2 3 4] 
%   and y = [1 4 9 16], we would compute the midpoint rule and trapezoid
%   rule from x = 1 to x = 2, from x = 2 to x = 3, and from x = 3 to x = 4.
%
%   As a refresher, the midpoint rule can be used to approximate the
%   integral in the following way: 
%
%           integral(f(x)) from a to b = (b-a)*f((a+b)/2) 
%   
%   Since we have been given discrete points, we will
%   not always have the value of f((a+b)/2). We can use polyfit() and
%   polyval() to get an estimate of this though.
%
%   The trapezoid rule is as follows: 
%
%           integral(f(x)) from a to b = (1/2)*(b-a)*(f(a)+f(b))
%
%
%   Since we will always have the values of f(a)and f(b) (they are just the
%   corresponding y values), we won't have to worry about using polyval()
%   and polyfit() here.
%
%   After computing both rules, take the weighted average as described
%   above, sum that result (it should be a vector) and return that sum.  
%   
% Notes:
%   - You may assume that two inputs will always be the same length, but
%     you may NOT assume that they are in increasing order. So you do need
%     to account for a case like simpson([1 3 2], [1 27 8]).  Remember
%     sort's second output!
%   - When you use polyfit, use all of your data, and fit it to the highest
%     order unique polynomial.
%   - You may assume that the length of the inputs will be greater than 1,
%     and that all x values will be unique.
%
% Test Cases:
%   int1 = simpson([1 2 3 4], [1 2 3 4]);
%       int1 => 7.5
%
%	int2 = simpson([9 6 2 1], [81 36 4 1]);
%       int2 => 242.6667
%
%%
%==========================================================================
% PROBLEM 4.  If The Datas Fits... 
%--------------------------------------------------------------------------
%
% Function Name: uniqueBestFit
% Inputs  (2): - (double) x-data
%              - (double) y-data 
% Outputs (0): - None
% Output Plots (1): Plot of the different subplots leading to a unique fit
%
% Function Description:
%   Write a function called "uniqueBestFit" that takes in x and y data and
%   then creates a plot of all the fits up to the the last unique fit. Each
%   unique fit will be its own subplot, with two subplots per row.
%
%   Specifics:
%   - For each order fit, you should calculate the average absolute
%     difference between the y-values obtained from evaluating the fitted 
%     curve at the original x-values and the original y values.
%   - Use 100 linearly spaced points between the smallest and largest x 
%     value for new x values. 
%   - Plot all of the data with the original points in blue circles. Plot
%     the lowest order fit curve with an average absolute difference
%     strictly less than 0.75 with a green line and all other fits with a
%     red line.
%   - The title of the fitted plots should read '__ Order Fit', where the
%     blank is the ordinal number of the fit. Example, a first order fit
%     should read '1st Order Fit', while second order fit will read '2nd
%     Order Fit' and so on. 
%   - x-values are not guaranteed to be in ascending or decreasing order,
%     but the 1st x-value will correspond to the 1st y-value and so on.
%   - There is not guarenteed to be a fit with average absolute difference
%     strictly less than 0.75.
%
% Notes:
%   - You may assume that the unique fit in this equation will not be
%     greater than a 10th order equation.
%   - You may assume that you are to begin with a 1st order fit, i.e. that
%     the input vector is a length of at least 2. Note that even though
%     only one plot will exist when the input vector is of length 2, you
%     must still adhere to the rule that there are to be enough space for
%     two subplots per row.
%
% Test Cases:
% 
%   uniqueBestFit(0:5, [55.4 37.5 -29 -54.5 -33.9 1.5]);
%       => should look like "Test_Case_1.png"
%
%   uniqueBestFit([4 1 7 8 5 3 2 10], [0.18 -3.68 0 0 -0.07 -0.5 1.35 0]);
%       => should look like "Test_Case_2.png"
%
%%
%==========================================================================
% PROBLEM 5.  Who's Peaking? 
%--------------------------------------------------------------------------
%
% Function Name: findPeaks
% Inputs  (1): - (char)  A filename of an Excel file
% Outputs (0): - (none)
%
% Output Plot (1): - A plot of the data and peaks highlighted
% 
% Function Description:
%   Graduation is upon you, but some lab work stands between you and your
%   diploma.  In your senior research lab, you have taken some data and
%   recorded it to excel spread sheets, but your professor needs it in an
%   easy-to-read format with the relevant data highlighted. Your plot needs
%   to contain the following features:
%
%       1) A plot of the data as it currently appears, with blue lines 
%       2) Green circles at the local maxima
%       3) Black star at the global maximum
%  
%   The Excel spread sheet has two columns, and an varying number of rows
%   depending on how many samples you took during your experiment. The
%   first column is the wavelength of the element you are working with, and
%   the second column is the value measured at that particular wavelength.
%   Your X-axis will be the wavelength, and the Y-axis will be the values
%   measured.
%
%   Local maxima are where the value at a particular wavelength is
%   greater than both the wavelength prior to it, and the wavelength
%   immediately following it.  At these wavelengths, you want to plot a
%   green circle at each value (or each local maximum). A global maximum is
%   the maximum of all the local maxima. 
%
%   Notes: 
%   - The first and last index cannot be a local max and should not
%     be considered for a maximum.
%
%   Test Cases:
%   findPeaks('iodine.xls')
%       => Plot should look like iodine.fig
%   
%   findPeaks('peaksofiodRT.xls')
%       => Plot should look like peaksofiodRT.fig
%
%%
%==========================================================================
% PROBLEM 6. T-Tests (No, It's Not About How Fast You Can Steal Them)
%--------------------------------------------------------------------------
%
% Function Name: t_test
% Inputs (2): - (double) vector of data points from one sample population
%             - (double) vector of data points from another sample population
% Outputs(2): - (double) calculated t-statistic 
%             - (char)   string describing the level of significance
%                        predicted by the t-statistic
%
% Function Description:
%   In statistics, a t-test is a method used to determine if there is a 
%   significant difference between the means of two groups, or samples,
%   which are typically subject to different treatments in a study. Your 
%   task is to create a function called "t_test" that takes in two vectors,
%   each containing a set of data points from a different sample and 
%   performs a two-tailed student's t-test. Specifically, the function 
%   should output the calculated t-statistic as well as a string describing
%   how significant the difference between the means of the two samples is.
%
%   Although there are many types of student's t-tests, for the purposes of
%   this problem, you should calculate your t-statistic based on the 
%   Welch's t-test, whose formula for the t-statistic is as follows:
%
%                   t = abs(x1_bar - x2_bar)/SEM
%
%   where x1_bar is the mean of the first sample, x2_bar is the mean of the
%   second sample, and SEM is the standard error of the mean calculated as
%   follows:
%
%                   SEM = sqrt(var1/n1 + var2/n2)
%
%   Here n1 and n2 are the number of data points in the first and second
%   samples, respectively. Similarly, var1 and var2 represent the variance
%   (or standard deviation squared) of both samples.
%       
%   To perform the t-test after calculating the t-statistic, one needs to
%   consult a t-table, which has been given to you in the file
%   't_table.xls'. To read a t-table, first locate the row corresponding to
%   the correct degrees of freedom (equal to n1 - 1) given in the first 
%   column. The remaining three values within that row are p-values, which 
%   when compared to the t-statistic represent the probability that the 
%   difference between the two samples is entirely due to chance. 
%   Therefore, if the calculated t-statistic is greater than or equal to 
%   the last and highest of the three values, your output string should be 
%   'The difference in the means is very highly significant.' because this 
%   would mean the probability of the difference arising by chance is less
%   than 1%. If the calculated t-statistic is only greater than or equal to
%   the second value, your output string should be 'The difference in the 
%   means is highly significant.'. If the calculated t-statistic is only 
%   greater than or equal to the first value, your output string should be 
%   'The difference in the means is significant.'. Finally, if your 
%   t-statistic is less than all the p-values, your output string should be
%   'The difference in the means is not significant.'
%
% Notes:
%   - The sample sizes of both populations is guaranteed to be the same.
%   - The desired degrees of freedom is guaranteed to be given in the 
%     't_table.xls' file
%   - The same t-table file should be used for comparing all t-statistics.
%
% Test Cases:
% [tstat1 str1] = t_test([520 460 500 470], [230 270 250 280])
%   tstat1 => 13.0108
%   str1  => The difference in the means is very highly significant.  
% 
% [tstat2 str2] = t_test([350 330 250 320 270 280], [230 270 250 280 260
% 250])
%   tstat2 => 2.4835
%   str2  => The difference in the means is significant.
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
