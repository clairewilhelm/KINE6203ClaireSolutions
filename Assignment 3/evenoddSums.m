function [answer,sum] = evenoddSums(number1,number2)
%This function takes two numbers as inputs and outputs the sum of the two
%numbers along with if the sum is even or odd. If the sum is even, it will
%output 'Woo' and if the sum is odd, it will outout 'Hah'. 
sum=number1+number2;
if (rem(sum,2)==0)
    answer="Woo"
else
    answer="Hah"
end
end

