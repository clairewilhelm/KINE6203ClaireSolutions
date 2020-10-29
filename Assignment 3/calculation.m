function [sum,difference,product,max] = calculation(number1,number2)
%This is a function that will take two values and calculate the sum, difference,
%product, and output the larger of the two numbers.  
sum=number1+number2;
difference=number1-number2;
product=number1*number2;
if number1>number2
    max=number1;
elseif number2>number1
    max=number2;
else
    max=number1;
end
end

