#!/bin/bash -x
echo "Flip Coin Simulation problem displays the winner Heads or Tails"
heads=0
tails=0
while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
		heads=$(($heads+1))
	else
		tails=$(($tails+1))
	fi
done
if [ $heads -eq 21 ] && [ $tails -eq 21 ]
then
	echo "Its a Tie"
elif [ $heads -eq 21 ]
then
	echo "Head won by" $(($heads-$tails))
else
	echo "Tail Won by" $(($tails-$heads))
fi
