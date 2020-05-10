#!/bin/bash

echo "********Snake And Ladder*******"

#uc1 add player and intialize position of the player 
position=0

#uc2 roll die toget number between 1 to 6

rollDie=$(($RANDOM%6 + 1 ))

echo  $rollDie
