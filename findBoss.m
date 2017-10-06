

function [ grouch ] = findBoss( brownnosers, slacky )
slavedriver = [slacky]; %creates a dummy vector representing the boss. Since 
%I am keeping track of whether this is empty or not as my loop, I want to
%start off with it as the employee
grouch = {}
while ~isempty(slavedriver) %while there is still a boss to be found installing fear of unemployment
    %in the hearts of the employed...
    emp = []; %initilize the vector
    for x = 1:length(brownnosers) %for the length of the structure...
    a = strcmp(brownnosers(x).employee, slavedriver); %find the specified employee
    emp = [emp a]
    end
    emp1 = find(emp) %find the employee's structure
slavedriver = brownnosers(emp1).boss %find that employee's boss
grouch(end+1)={slavedriver} %index the boss into the bosses' list
end
if ~isempty(grouch) %in the off-chance that grouch can be empty right off the bat, when it's not...
    grouch(end)=[] %delete the empty boss
else %when it is....
    grouch = {} %put empty cell...
end


%function to determine the bosses in the office from a 1xN structure
%representing the number of employees and their bosses. 
%Usage: function [ grouch ] = findBoss( brownnosers, slacky )


end
