function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
%         DUE: November 12
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced 
    %Bug 1 found here- the logical or was changed to the logical and
    %considering that with the or it would always be false and was stuck in
    %the while loop continuously no matter what was entered. Bug was found
    %by not being able to exit this loop when running the function. 
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner    %Bug 2 found here- replaced the single '=' with a double '==' in order to make it equal. Found by running the code.                 

    highest = beginnerHighest;

elseif level == moderate

    highest = moderateHighest;

else
    highest = advancedHighest;  %Bug 3 found here- the 'advancedhighest' was replaced with 'advancedHighest' because that is the name of the function. Bug was found by an error message when running the program.         
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1, highest]);     
%Bug 4 found- according to the original equation, the user will never guess
%the number because it will be larger than the highest value possible.
%Changed the range to be up to the highest value. Also switched the function to 'randi' because it was not generating a random number. Found this when never
%able to guess the right number. 
% initialize number of guesses and User_guess

numOfTries = 0; %Bug 5- adjusted the number to be equal to zero because it would add 1 to how many tries it actually took me. Found by playing and it told me one number higher than it actually took me. 
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
 
while userGuess < 1 || userGuess > highest
%Bug 6- code had '>= highest' which would not allow the user to be able to
%guess the highest possible value for that level. Found when checking the
%boundaries. Fixed by taking out the '='.
    fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

    userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

    numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
    %Bug 7 found- the userGuess being greater than the secretNumber says the
    %same thing as the elseif statement below. Changed to userGuess is less
    %than secretNumber.
    fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
    fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
    fprintf('\nLucky You!  You got it on your first try!\n\n');
else
    fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries); %Bug 8-added 'numOfTries' at the end so that way the system could display the number, it was not before. Found by playing the game and it would not tell me. 

    fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end
end %Bug 9- added the 'end' for the while function starting on line 85. It was missing. Found by running the code.   
end %Bug 10- there was not an end to end the function so this one was added in order to officially end the function. 

% end of game