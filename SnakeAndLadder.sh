#!/bin/bash

echo "********Snake And Ladder*******"

#uc1 add player and intialize position of the player 
endPosition=100
diceCount=0
player1Position=0
player2Position=0

#read -p "Enter first player name:- " player1
#read -p "Enter second player name:- " player2


function getPosition()
{
	position=$1
	#uc2 roll die toget number between 1 to 6	
	rollDie=$(($RANDOM%6 + 1 ))
	
	((diceCount++))

	#uc3 checks for position where if pos=0 no move,pos=1 ladder move ahead by rolldie, pos=2 snake go down by rolldie
	option=$(($RANDOM%3))

	case $option in

	0)
		position=0
	;;
	1)
		position=$(($position + $rollDie))
	;;
	2)
		position=$(($position - $rollDie))
	;;
	esac
				if [ $position -lt 0 ]
				then
					position=0
				elif [ $position -gt $endPosition ]
				then
					position=$(($postition-$diceRandom))
				fi
					echo "$position"
}

#func call
getPosition


read -p "Enter first player name:- " player1
read -p "Enter second player name:- " player2


#uc4 repeat till player reaches winning pos
while [[ $player1Position -lt $endPosition && $player2Position -lt $endPosition ]]
do

player1Position=$(getPosition $player1Position)
player2Position=$(getPosition $player2Position)

echo "player 1 position :-" $player1Position
echo "player 2 position :-" $player2Position

	if [[ $player1Position -gt  $player2Position && $player1Position -eq $endPosition ]]
	then
		echo "Congratulations, $player1 you WIN!!!"
	elif [ $player2Position -eq $endPosition ] 
	then
		echo "Congratulations, $player2 you WIN!!!"
	fi

done
