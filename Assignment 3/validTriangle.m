function [validorNot] = validTriangle(array)
%This function takes an array as an input and outputs whether or not the
%array values make up the sides of a valid triangle or not. 
% Need to enter a single element row vector of length 3 for the variable array. These lengths are
% the sides of a triangle.
a=array(1,1);
b=array(1,2);
c=array(1,3);
if ((a+b)>c)
    validorNot=true
elseif ((a+c)>b)
    validorNot=true
elseif ((b+c)>a)
    validorNot=true
else
    validorNot=false
end
end

