#UC5
Player1=0
dice=0
GetRandom()
{
dice=$(($((RANDOM%6))+1))
}
check()
{
n=$(($RANDOM%3))
	if(($n==0))
then
	echo "Player dont want to move -" $Player1
	elif(($n==1))
then
	echo "Ladder is present -" $Player1
	Player1=$((Player1+dice))
	if(($Player1==100))
	then
		return
	elif(($Player1>100))
	then
		Player1=$(($Player1-$dice))
	fi
	elif(($n==2))
	then
		echo "Snake is present -" $Player1
		if(($Player1>=$dice))
		then
			Player1=$(($Player1-$dice))
		else
			Player1=0
fi
fi
}
	while(($Player1<100))
do
GetRandom
check
done
	echo "$Player"
	echo "Player Wins at position - "$Player1 

