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
