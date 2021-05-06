#!/bin/bash -x
echo "Flip Coin Simulation"
echo  " This problem displays the winner Heads or Tails"
heads=1
flip=$((RANDOM%2))
if [ $flip -eq $heads ]
then 
	echo "Flip coin : Heads"
else
	echo "Flip coins : Tails"
fi
