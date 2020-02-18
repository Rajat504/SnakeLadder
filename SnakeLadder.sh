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
echo "Postion of Player1 is - "$Player1
