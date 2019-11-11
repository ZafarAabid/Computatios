#! /bin/bash

read -p "Enter first input:" input1
read -p "Enter secound input:" input2
read -p "Enter third input:" input3


function computation1() {
	result=$(( $1 + $2 * $3))
	echo $result
}

computation1 $input1 $input2 $input3

function computation2() {
	result=$(( $1 * $2 + $3))
	echo $result
}

computation2 $input1 $input2 $input3

function computation3() {
	result=$(( $1 + $2 / 3))
	echo $result
	}

computation3 $input1 $input2 $input3


function computation4() {
	result=$(( $1 % $2 + 3))
	echo $result
	}

computation4 $input1 $input2 $input3
