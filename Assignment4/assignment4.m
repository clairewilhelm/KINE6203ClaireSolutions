%%
%Assignment 4 

%Author: Claire Wilhelm

%Date: 11-2-2020

%Description: This code inputs a csv file with isometric strength data
%containing 25 subjects and their weight/gender/age and tracks their
%strength numbers on three seperate days. This code will average the
%strength values over the three days for each subject, splitting them by
%gender as well as give the average value for each gender. It will also
%output which subjects increased their strength from day 1 to day 2 and
%then day 2 to day 3. Lastly, it will normalize the data based on weight.
%In the end, it will output a csv file with all of this information. 

%Developed on Matlab version 2020b, on Mac OSX
%%
%Below inputs the data from the chart from Isometric Strength Data on 3 seperate
%days from 26 subjects. This seperates each of the subheading columns into
%its own vector column. 

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv", [2, Inf]);

%The function below will take the average of the individual males and
%females over the three days. It will also return the average of all of the
%males and all of the females.

[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

%The function below will return a matrix with the Subject IDs of those who
%icreased their strength from the first day listed to the second day
%listed. 

[day1toDay2] = dayComparer(SubjectID,Day1,Day2);

[day2toDay3] = dayComparer(SubjectID,Day2,Day3);

%The below variables are the weight normalized group means data for each day of
%isokinetic data. 

normDay1mean = (mean(Day1)/mean(Weight));

normDay2mean = (mean(Day2)/mean(Weight));

normDay3mean = (mean(Day3)/mean(Weight));

%The below variable is made to store all of the variables created above 

total=[maleIsoIndMeans;femaleIsoIndMeans;maleGroupIsoMean;femaleGroupIsoMean;day1toDay2;day2toDay3;normDay1mean;normDay2mean;normDay3mean];

%The following will export all of the above variables into a csv file.

writematrix(total,'iso_results.csv');

disp('The end')

