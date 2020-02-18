#UC7
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
	echo "player dont want to move"
	elif(($n==1))
	then
	echo "Ladder is present"
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
	echo "snake is present"
if(($Player1>=$dice))
then
	Player1=$(($Player1-$dice))
else
	Player1=0
fi
fi
	return $Player1
}
Player2=0
flag=0
	while(($Player1<100 && $Player2<100))
do
	dicecount=$(($dicecount+1))
if(($flag==0))
then
	GetRandom
	echo "Player1 is:" $Player1
	check
	flag=$(($flag+1))
	elif(($flag==1))
then
GetRandom
	echo "Player2 is:" $Player2
check
Player2=$?
flag=$(($flag-1))
fi
done
echo "no.of times dice rolled:"$dicecount
if((Player1==100))
then
echo "Player1 wins"
elif((Player2==100))
then
echo "Player2 wins"
fi
