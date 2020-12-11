#!/bin/bash

read -p "Enter how number for flipping the coin" number
heads=1
tails=0
headCount=0
tailCount=0
count=$number
declare A dictionary
while (($count>0))
do
	flipCoin=$(( RANDOM%2 ))

	if [ $flipCoin -eq 1 ]
	then
		dictionary[$count]="heads"
		((headCount++))
		#headPercent=$((($headCount*100)/$number))
		#echo "Percentage" $headPercent
	else
		dictionary[$count]="tails"
		((tailCount++))
		#tailPercent=$((($tailCount*100)/$number))
		#echo "Percentage" $tailPercent
	fi
((count--))
done
echo ${dictionary[@]}
headPercent=$((($headCount*100)/$number))
tailPercent=$((($tailCount*100)/$number))
echo "Percentage of Head : " $headPercent
echo "Percentage of Tail : " $tailPercent

#headPercent=$(echo "scale=2; ($headCount*100)/$number"|bc)
#tailPercent=$(echo "scale=2; ($tailCount*100)/$number"|bc)
