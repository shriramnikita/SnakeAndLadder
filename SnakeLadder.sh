#!/bin/bash

echo "********Snake And Ladder*******"


endPosition=100
diceCount=0

player1Position=0
player2Position=0

function getPosition(){
	position=$1
	rollDie=$(($RANDOM%6 +1 ))
	((diceCount++))


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
					echo "$position"
}
getPosition


#uc7 add players
read -p "Enter first player name:- " player1
read -p "Enter second player name:- " player2 

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
