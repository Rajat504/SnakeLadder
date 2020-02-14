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
