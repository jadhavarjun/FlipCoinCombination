#!/bin/bash

read -p "Enter how number for flipping the coin" number
heads=1
tails=0
heads2=2
tails2=3
heads3=4
tails3=5
hhhCount=0
hhtCount=0
hthCount=0
httCount=0
thhCount=0
thtCount=0
tthCount=0
tttCount=0
count=$number
declare A dictionary
while (($count>0))
do
	flipCoin1=$(( RANDOM%2 ))
	flipCoin2=$(( RANDOM%2 + 2 ))
	flipCoin3=$(( RANDOM%2 + 4 ))

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 4 ]
	then
		dictionary[$count]="HHH"
		((hhhCount++))
	fi

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="HHT"
                ((hhtCount++))
        fi

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 4 ]
        then
                dictionary[$count]="HTH"
                ((hthCount++))
        fi

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="HTT"
                ((httCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 4 ]
        then
                dictionary[$count]="THH"
                ((thhCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="THT"
                ((thtCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 4 ]
        then
                dictionary[$count]="TTH"
                ((tthCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="TTT"
                ((tttCount++))
        fi

((count--))
done
echo ${dictionary[@]}
hhhPercent=$((($hhhCount*100)/$number))
hhtPercent=$((($hhtCount*100)/$number))
hthPercent=$((($hthCount*100)/$number))
httPercent=$((($httCount*100)/$number))
thhPercent=$((($thhCount*100)/$number))
thtPercent=$((($thtCount*100)/$number))
tthPercent=$((($tthCount*100)/$number))
tttPercent=$((($tttCount*100)/$number))

echo "hhh Percentage : " $hhhPercent
echo "hht Percentage : " $hhtPercent
echo "hth Percentage : " $hthPercent
echo "htt Percentage : " $httPercent
echo "thh Percentage : " $thhPercent
echo "tht Percentage : " $thtPercent
echo "tth Percentage : " $tthPercent
echo "ttt Percentage : " $tttPercent
