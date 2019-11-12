#! /bin/bash -x

read -p "Enter first input:" input1
read -p "Enter secound input:" input2
read -p "Enter third input:" input3

declare -A computations
counter=0

function computation1() {
	result=$(( $1 + $2 * $3 ))
	computations["$((counter++))"]="$(( $1 + $2 * $3 ))"
	results[$counter]="$(( $1 + $2 * $3 ))"
}
function computation2() {
	result=$(( $1 * $2 + $3 ))
	computations["$((counter++))"]="$(( $1 * $2 + $3 ))"
	results[$counter]="$(( $1 * $2 + $3 ))"
}
function computation3() {
	result=$(( $1 + $2 / $3 ))
	computations["$((counter++))"]=$(( $1 + $2 / $3 ))
	results[$counter]=$(( $1 + $2 / $3 ))

	}
function computation4() {
	result=$(( $1 % $2 + $3 ))

	computations["$((counter++))"]="$(( $1 % $2 + $3 ))"
	results[$counter]="$(( $1 % $2 + $3 ))"

	}
function sortingAsc() {
	sort=$( printf "%s\n" ${results[@]} | sort -n )
	}
function sortingDesc() {
	sort=$( printf "%s\n" ${results[@]} | sort -nr )
	}



computation1 $input1 $input2 $input3
computation2 $input1 $input2 $input3
computation3 $input1 $input2 $input3
computation4 $input1 $input2 $input3
echo  "Array is "${results[@]}
echo "dict is "${computations[@]}
echo "$( sortingAcs )"
echo "$( sortingDesc )"
for (( counts=0; counts <= ${#computations} ; counts++ ))
do
	echo "${computations[$counts]}"
	echo  "${results[$counts]}"
done
