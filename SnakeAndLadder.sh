#!/bin/bash

echo "********Snake And Ladder*******"

#uc1 add player and intialize position of the player 
position=0
read -p "Enter first player name:- " player1
read -p "Enter second player name:- " player2


#uc2 roll die toget number between 1 to 6

rollDie=$(($RANDOM%6 + 1 ))

echo  $rollDie
