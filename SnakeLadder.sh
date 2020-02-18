GetRandom()
{
n=$(((($RANDOM%6))+1))
return $n
}
GetRandom
res=$?
echo "$res"

