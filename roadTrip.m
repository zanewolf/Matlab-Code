% Script Name: roadTrip
%   Variables: tankMiles  (double) the number of miles a car can travel
%                          with the amount of gas given in the second input
%              tankSize   (double) the gallons of gas in a tank full
%              miles      (double) the length (in miles) of a road trip
%              pricePerGal(double) the price of gas per gallon            
%      Output: cost       (double) the cost of the amount of gas needed for
%                          the road trip
%
% Script Description:
%   Write a script named "roadTrip" that uses the number of miles a
%   car can travel with a specified number of gallons of gas, as well as 
%   the length of a road trip and the price of gas per gallon. The script
%   calculates the cost of the amount of gas needed for the trip.  
%
cost = (tankSize .* priceperGal .* miles) ./ tankMiles % I wrote the 
% variables as tankMiles = (miles/tankSize), tankSize = (gallons/tankSize),
% miles = miles, and priceperGal = (price/gallons). I then figured out how
% to arrange the variables in such a way as to get the "units" to cancel
% out, leaving only price (cost) in the numerator. 
