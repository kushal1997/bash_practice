#!/bin/bash


echo "Calculator App"


arr=('add' 'sub' 'mult' 'div' 'sqr' 'cube')

flag=0
num1=0
num2=0

readNum() {
	read -p "Enter the first number : " num1
	read -p "Enter the second number : " num2
}

add() {
	 echo "Result is : $(( $1 + $2 ))"
}

subtract() {
	if [ $1 -ge $2 ]; then
		echo "Result is : $(( $1 - $2 ))"
	else
		echo "Result is : $(( $2 - $1 ))"
	fi
}

# TODO : change "option" to array value while comparison
handleCalculation() {
	if [ $option -eq 1 ]; then
		readNum
		add $num1 $num2
	elif [ $option -eq 2 ]; then
                read -p "Enter the first number : " num1
                read -p "Enter the second number : " num2
                subtract $num1 $num2
	fi
}

echo "Options are :"

for i in "${!arr[@]}"; do
	echo "$((i+1)). ${arr[i]}"
done

while [ $flag -eq 0 ]; do

	read -p "Choose your option wisely: " option

	if [ $option -ge 1 ] && [ $option -le ${#arr[@]} ]; then
		flag=1
		echo "correct option - ${arr[((option-1))]}"
		handleCalculation
		break
	else
		echo "wrong option"
	fi
done


