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
		if [[ $headCount -gt 20 ]]
		then
			break
		fi
	else
		echo "It's Tail..."
		(( tailCount++ ))
		if [[ $tailCount -gt 20 ]]
		then
			break
		fi

	fi
if [[ $headCount -eq $tailCount ]]
then
	continue
fi
done
echo "No of time head : " $headCount
echo "No of time tail : " $tailCount 

if [[ $headCount > $tailCount ]]
then
	echo "There are $(( $headCount - $tailCount )) more heads than tails."
elif [[ $headCount < $tailCount ]]
then
        echo "There are $(( $tailCount - $headCount )) more tails than heads."
else
	echo "There is tie..."
fi

