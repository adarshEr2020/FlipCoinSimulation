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
	if [ $heads -eq 21 ]
	then
		while [ $(($heads-$tails)) -gt 2 ]
		do
			tails=$(($tails+1))
		done
	else
		while [ $(($tails-$heads)) -gt 2 ]
		do
			heads=$(($head+1))
		done
	fi
elif [ $heads -eq 21 ]
then
	echo "Head won by" $(($heads-$tails))
else
	echo "Tail won by" $(($tails-$heads))
fi
echo "Final head value" $heads
echo "Final tail count" $tails
