function [figureVector] = graphVectors(vector1,vector2)
%This function takes two vectors as the input and outputs a graph
%consisting of both vectors.
%The vetors must be inputted as [a b].
%The two vectors will be plotted together in one graph. 
figureVector= plot(vector1,vector2)
title('Vectors');
xlabel('vector1');
ylabel('vector2');
end

