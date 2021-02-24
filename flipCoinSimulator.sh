#!/bin/bash -x

Head=0
Tails=0
for((i=1;i<=10;i++))
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
	echo "Head is win=" $Head
else
	echo "Tails is win=" $Tails
fi
