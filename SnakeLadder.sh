#UC3
Position=0
GetRandom()
{
n=$(((($RANDOM%6))+1))
return $n
}
Check()
{
GetRandom
res=$?
n=$(($RANDOM%3))
if(($n==0))
then
echo "NO PLAY"
echo "PLAYER DONT WANT TO MOVE"
elif(($n==1))
then
echo "Ladder is present"
if(($Player1+$res<100))
then
player1=$(($Player1+$res))
elif(($Player1+$res==100))
then
echo "player wins"
fi
elif(($n==2))
then
if(($Player1+$res<100))
	then
	Player1=$(($Player1+$res))
	elif(($Player+$res==100))
	then
	echo "player wins"
	fi
	elif(($n==2))
	then
	if(($Player1==0))
	then
	echo "Snake is present"
	else
	echo "Snake is present"
 	Player1=$(($Player1-$res))
	fi
	fi
	return $Player1
}
Check
pos=$?
echo "player is at position"$pos
