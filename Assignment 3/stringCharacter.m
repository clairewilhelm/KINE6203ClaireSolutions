function [length,first,last] = stringCharacter(word)
%This function takes any word as an input and outputs the length of the
%word, the first letter in the word, and the last letter in the word. 
%Input the word as a string vector.   
length=numel(word)
first=word(1)
last=word(end)
end

