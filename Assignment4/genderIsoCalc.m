function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
%This function inputs the vector columns defined in importfile.m and
%outputs individual and the group mean isometric strength values across all 3 days of
%lifting for females and males. 

maleIsoIndMeans=[];
femaleIsoIndMeans=[];

%This creates two matrices for the for loop below to deposit the values in.

for i=1:length(Gender);
    if Gender(i)=='M';
        maleIsoIndMeans(i,1)=[(Day1(i,1)+Day2(i,1)+Day3(i,1))/3];
    else
        femaleIsoIndMeans(i,1)=[(Day1(i,1)+Day2(i,1)+Day3(i,1))/3];
    end
end

maleGroupIsoMean=mean(maleIsoIndMeans);%This takes the average of the individual means for males.

femaleGroupIsoMean=mean(femaleIsoIndMeans);%This takes the average of the individual means for females. 
    
end

