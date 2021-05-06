#!/bin/bash -x
echo "Flip Coin Simulation problem displays the winner Heads or Tails"
heads=0
tails=0
read -p "Enter number of flip coin required" n
for((i=0; i<n; i++))
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
		heads=$(($heads+1))
	else
		tails=$(($tails+1))
	fi
done
echo "number of times head win" $heads
echo "Number of times tails win" $tails
