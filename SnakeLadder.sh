#!/bin/bash

echo "********Snake And Ladder*******"

#uc1 add player and intialize position of the player 
position=0

endPosition=100
diceCount=0

#uc4 play unitl winning position
while [ $position -lt $endPosition ]
do

	#uc2 roll die toget number between 1 to 6
	rollDie=$(($RANDOM%6 + 1 ))
	
	#uc6 count the die
	((diceCount++))

	#uc3 checks for position where if pos=0 no move,pos=1 ladder move ahead by rolldie, pos=2 snake go down by rolldie
	option=$(($RANDOM%3))

	case $option in

		0)
			position=$position
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
				#Uc5 plat till win pos 100
				elif [ $position -gt $endPosition ]
				then
					position=$(($postition-$rollDie))
				else
					echo "Position--> " $position
				fi
done

echo "No. of times the dice was rolled to win: "$position
