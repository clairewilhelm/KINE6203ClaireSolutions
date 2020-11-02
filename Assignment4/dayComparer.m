function [day1toDay2] = dayComparer(SubjectID,Day1,Day2)
%This function will compare Day1 to Day2 strength values and return a
%matrix with the subject IDs of those who increased their strength from day
%1 to day 2. 

day1toDay2=[]; %This sets up a matrix that the for loop will store its return values in. 

for i=1:length(SubjectID); 
    if Day2(i)>Day1(i);
        day1toDay2(i,1)=SubjectID(i,1);
    else
    end
end

end

