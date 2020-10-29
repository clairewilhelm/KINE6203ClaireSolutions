function [totalMoney] = moneySum(quarters,dimes,nickels,pennies)
%This function takes the number of quarters, dimes,nickels, and pennies and
%returns the total sum of the money. 
%It is important to input the number of coins in the following
%order:quarters, dimes, nickels, pennies. 
totalMoney=strcat("$", num2str((0.25*quarters)+(0.1*dimes)+(0.05*nickels)+(0.01*pennies)))
end

