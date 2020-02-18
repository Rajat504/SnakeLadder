board()
{
a=101
declare -A arr
	for((i=0;i<10;i++))
	do
		if(($i%2==0))
		then
			for((j=0;j<10;j++))
			do
				a=$(($a-1))
				arr[$i,$j]=$a
			done
		else
			for((j=9;j>=0;j--))
			do
				a=$(($a-1))
				arr[$i,$j]=$a
			done
		fi
	done
			echo "_________________________________________________"
				for((i=0;i<10;i++))
				do
					if(($i==9))
					then
						for((j=0;j<10;j++))
						do
							echo -n "|  "
							echo -n "$((arr[$i,$j])) "
						done
					else
						for((j=0; j<10; j++))
						do
							echo -n "| "
							echo -n "$((arr[$i,$j])) "
						done
					fi
					echo " "
					echo "__________________________________________________"
				done
}
board
#UC1
Position=0
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
echo "player is at position "$pos
#UC4
Player1=0

GetRandom()
{
dice=$(((($RANDOM%6))+1))
return $dice
}
check()
{
n=$(($RANDOM%3))
GetRandom
dice=$?
if(($n==0))
then
	echo "player dont wnat to move - "$Player1
elif(($n==1))
then
	echo "ladder is present -"$Player1
	Player1=$(($Player1+$dice))
elif(($n==2))
then
	echo "snake is present - "$Player1
#UC6
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
fi
fi
}
	while(($Player1<100))
do
GetRandom
check
done
echo "Postion of Player1 is - "$Player1
	echo "$Player"
	echo "Player Wins at position - "$Player1 
fi
fi
}
while(($Player1<100))
do
dicecount=$((dicecount+1))
GetRandom
check
done
echo "No.of times diceRolled: $dicecount"
echo "Player Wins at Position -" $Player1
