#!/bin/bash

echo "********Snake And Ladder*******"

#uc1 add player and intialize position of the player 
position=0

endPosition=100


#uc4 play unitl winning position
while [ $position -le 100 ]
do

	#uc2 roll die toget number between 1 to 6
	rollDie=$(($RANDOM%6 + 1 ))


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
				elif [ $position -gt $endPosition ]
				then
					position=$(($postition-$diceRandom))
				else
					echo "Position--> " $position
				fi
done
