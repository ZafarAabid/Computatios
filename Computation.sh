#! /bin/bash

read -p "Enter first input:" input1
read -p "Enter secound input:" input2
read -p "Enter third input:" input3


function computation1() {
	echo $(( $input1 + $input2 * $input3))
}

echo "Answer of computation1(input1+input2*input3) is : " "$( compution1 $input1 $input2 $input3 )"	

function computation2() {
	echo $(( $input1 * $input2 + $input3))
}

echo "Answer of computation1(input1*input2+input3) is : " "$( compution2 $input1 $input2 $input3 )"	

