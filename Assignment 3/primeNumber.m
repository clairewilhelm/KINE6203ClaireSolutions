function [primeorNot] = primeNumber(number1)
%This function takes one number as an input and outputs whether the number
%is prime or not. 
%If the number is prime, it will outout 'true'. If the
%number is not prime, it will outout 'false'.
answer=isprime(number1)
if answer==1
    primeorNot=true
else
    primeorNot=false
end
end

