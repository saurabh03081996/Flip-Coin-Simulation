#! /bin/bash -x

Head=1
Tail=0
headCount=0
tailCount=0

echo "Let's toss......"

read -p "Enter no of time you want to flip coin " noOfTime

for (( i=1;i<=$noOfTime;i++ ))
do
	flipCoin=$((RANDOM%2))

	if [[ $Head -eq $flipCoin ]]
	then
		echo "It's head..."
		(( headCount++ ))
	else
		echo "It's Tail..."
		(( tailCount++ ))
	fi
done
echo "No of time head : " $headCount
echo "No of time tail : " $tailCount 
