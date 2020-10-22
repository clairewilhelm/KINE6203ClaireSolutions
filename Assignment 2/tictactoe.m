%%
%Tic Tac Toe Game 

% Author: Claire Wilhelm

% Date: 10/22/2020

% Description: Play the game of Tic Tac Toe with user input throughout the
% game 

% Developed on Matlab version 2020b, on Mac OSX

%%
disp('Welcome to Tic Tac Toe')
disp('Do you wish to play')

play=input('Enter yes or no: ','s')%propmting the user to play the game
s1=play;
s2='yes';
tf=strcmp(s1,s2)
while 1
    sp1=subplot(3,3,1);%plotting the 9 subplots, appears to be a 3 x 3 arrangement of plots 
    title('1');
    sp2=subplot(3,3,2);
    title('2');
    sp3=subplot(3,3,3);
    title('3');
    sp4=subplot(3,3,4);
    title('4');
    sp5=subplot(3,3,5);
    title('5');
    sp6=subplot(3,3,6);
    title('6');
    sp7=subplot(3,3,7);
    title('7');
    sp8=subplot(3,3,8);
    title('8');
    sp9=subplot(3,3,9);
    title('9');
    user=zeros(1,5);    %this is a user array of zeros. the zeros will get replaced with the number of the spot that the user types into the computer and stored
    comp=zeros(1,5);    %this is an array of zeros that will eventually be the place holder for the numbers the computer generates as it plays the game
    user(1,1)=input('Type your number for your move: ');%user will go first, typing in their number associated with the subplot they want to make their move in
    if user(1,1)==1 %this assigns an 'X' to the subplot the user choses. (1,1) was used to assign this user input result into the first column of the "user" array
        subplot(3,3,1)
        text(0.5,0.5,'X');
    elseif user(1,1)==2
        subplot(3,3,2)
        text(0.5,0.5,'X');
    elseif user(1,1)==3
        subplot(3,3,3)
        text(0.5,0.5,'X');
    elseif user(1,1)==4
        subplot(3,3,4)
        text(0.5,0.5,'X');
    elseif user(1,1)==5
         subplot(3,3,5)
         text(0.5,0.5,'X');
    elseif user(1,1)==6
         subplot(3,3,6)
         text(0.5,0.5,'X');
    elseif user(1,1)==7
         subplot(3,3,7)
         text(0.5,0.5,'X');
    elseif user(1,1)==8
         subplot(3,3,8)
         text(0.5,0.5,'X');
    elseif user(1,1)==9
         subplot(3,3,9)
         text(0.5,0.5,'X');
    else 
         user(1,1)=input('Invalid number, please try again: ');%this is in case the user types in a value that is not an integer from 1 to 9
              if user(1,1)==1
                  subplot(3,3,1)
                  text(0.5,0.5,'X');
              elseif user(1,1)==2
                  subplot(3,3,2)
                  text(0.5,0.5,'X');
              elseif user(1,1)==3
                  subplot(3,3,3)
                  text(0.5,0.5,'X');
              elseif user(1,1)==4
                  subplot(3,3,4)
                  text(0.5,0.5,'X');
              elseif user(1,1)==5
                  subplot(3,3,5)
                  text(0.5,0.5,'X');
              elseif user(1,1)==6
                  subplot(3,3,6)
                  text(0.5,0.5,'X');
              elseif user(1,1)==7
                  subplot(3,3,7)
                  text(0.5,0.5,'X');
              elseif user(1,1)==8
                  subplot(3,3,8)
                  text(0.5,0.5,'X');
              elseif user(1,1)==9
                  subplot(3,3,9)
                  text(0.5,0.5,'X'); 
              end
    end
    for k=1:4   %this starts a loop with the computer playing against the user, checking for duplicate numbers entered to prevent overlap between Xs and Os
            comp(1,k)=randi(9); %the computer move is signified with an 'O' and was coded to be a random move 
                while (ismember(comp,user)) %this loop checks to make sure there is not an X in the spot the computer chose 
                    comp(1,k)=randi(9);
                end
                if comp(1,k)==1
                    subplot(3,3,1)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==2
                    subplot(3,3,2)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==3
                    subplot(3,3,3)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==4
                    subplot(3,3,4)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==5
                    subplot(3,3,5)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==6
                    subplot(3,3,6)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==7
                    subplot(3,3,7)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==8
                    subplot(3,3,8)
                    text(0.5,0.5,'O')
                elseif comp(1,k)==9
                    subplot(3,3,9)
                    text(0.5,0.5,'O')
                end
            user(1,(k+1))=input('Type your number for your move: ');
                while (ismember(comp,user)) %this checks to make sure that the user did not type a number the computer just chose or has chosen already 
                    user(1,(k+1))=input('Type your number for your move: ')%k+1 was used since the first position of the "user" array was used for the very first turn
                end
                if user(1,(k+1))==1
                    subplot(3,3,1)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==2
                    subplot(3,3,2)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==3
                    subplot(3,3,3)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==4
                    subplot(3,3,4)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==5
                    subplot(3,3,5)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==6
                    subplot(3,3,6)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==7
                    subplot(3,3,7)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==8
                    subplot(3,3,8)
                    text(0.5,0.5,'X');
                elseif user(1,(k+1))==9
                    subplot(3,3,9)
                    text(0.5,0.5,'X');
                else %this is to make sure that the user typed in a valid integer to play, if not they will be prompted to play again
                    user(1,(k+1))=input('Invalid number, please try again: ');
                        if user(1,(k+1))==1
                            subplot(3,3,1)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==2
                            subplot(3,3,2)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==3
                            subplot(3,3,3)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==4
                            subplot(3,3,4)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==5
                            subplot(3,3,5)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==6
                            subplot(3,3,6)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==7
                            subplot(3,3,7)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==8
                            subplot(3,3,8)
                            text(0.5,0.5,'X');
                        elseif user(1,(k+1))==9
                            subplot(3,3,9)
                            text(0.5,0.5,'X'); 
                        end
                end
            A=[1 2 3];%these vectors (A-H) are possible 3-in-a-row combinations in order to win this game of tic-tac-toe.The different combinations are being stored ahead of time. 
            B=[4 5 6];
            C=[7 8 9];
            D=[1 4 7];
            E=[2 5 8];
            F=[3 6 9];
            G=[1 5 9];
            H=[3 5 7];
            if (ismember(A,user))==1    %the following combinations are being checked to see if they are contained within the array "user", or the user's moves. This is to check to see if the player has won or not. The game will end here if this vector is contained within user. 
                break 
            elseif (ismember(B,user))==1
                break
            elseif (ismember(C,user))==1
                break
            elseif (ismember(D,user))==1
                break
            elseif(ismember(E,user))==1
                break
            elseif(ismember(F,user))==1
                break
            elseif(ismember(G,user))==1
                break
            elseif(ismember(H,user))==1
                break
            elseif (ismember(A,comp))==1    %the same combinations are now checked on the computer's moves to see if the computer generated a 3-in-a-row pattern, or the winning condition for tic-tac-toe
                break
            elseif (ismember(B,comp))==1
                break
            elseif (ismember(C,comp))==1
                break
            elseif (ismember(D,comp))==1
                break
            elseif(ismember(E,comp))==1
                break
            elseif(ismember(F,comp))==1
                break
            elseif(ismember(G,comp))==1
                break
            elseif(ismember(H,comp))==1
                break    
            end
    end
    disp('You lost!')   %in this game, a tie is equated to a loss since the player did not win
    play=input('Would you like to try again? Type yes or no: ','s') %this is prompting the user to see if they would like to play again or end the program
    s1=play;
    s2='yes';
    tf=strcmp(s1,s2)    %conditioning if and else based on if the player would like to play the game again or leave the program
        if tf
            continue
        else 
            break
        end
    disp('You won!!!')%this gets displayed if the player had a winning condition of 3-in-a-row
    play=input('Would you like to play again? Type yes or no: ','s')
    s1=play;
    s2='yes';
    tf=strcmp(s1,s2)
        if tf
            continue
        else
            break
        end
end%this is the end of the while loop, exiting the program
disp('Have a nice day')
clear all
          
    



 






    
    
    




