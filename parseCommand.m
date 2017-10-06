function [ gun1 gun2 spy ] = parseCommand( string)
[op1 c] = strtok(string, ' ');
[spy op2] = strtok(c, ' ');
op1(op1== ' ')=[];
op2(op2== ' ') = [];
gun1 = str2num(op1);
gun2 = str2num(op2);
% % Function to take a string representing some mathematical operation(e.g.
% '2 x 4') and to separate the elements of the string into the first
% number (2), the second number(4), and the operand(x). It should give you back the
% first and second number as the class double and the operand as the class
% character. 
% %Usage [ gun1 gun2 spy ] = parseCommand( string)
% [op1 c] = strtok(string, ' ');
% [spy op2] = strtok(c, ' ');
% op1(op1== ' ')=[];
% op2(op2== ' ') = [];
% gun1 = str2num(op1);
% gun2 = str2num(op2);
end

