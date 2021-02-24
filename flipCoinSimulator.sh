#!/bin/bash -x

Head=0
Tails=0
tailsWin=0
headWin=0
for((i=1;i<=40;i++))
do
	for((j=1;j<=10;j++))
	do
		random=$((RANDOM%2))
		if(($random == 1 ))
		then
		 	((Head++))
		else
			((Tails++))
		fi
	done
	if(($Head > $Tails))
	then
		echo "Head is win="
		((headWin++))
	else
		echo "Tails is win="
		((tailsWin++))
	fi
done
if(($tailsWin > $headWin ))
then
	howmuch=$(($tailsWin-$headWin))
	echo "TailsWin by " $howmuch
elif(($headWin > $tailsWin))
then
	howmuch=$(($headWin-$tailsWin))
	echo "Tails Win by "$howmuch
else
	echo "Tie"
fi


