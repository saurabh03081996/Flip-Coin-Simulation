#! /bin/bash -x

Head=1
Tail=0

echo "Let's toss......"
flipCoin=$((RANDOM%2))

if [[ $Head -eq $flipCoin ]]
then
	echo "It's head..."
else
	echo "It's Tail..."
fi
