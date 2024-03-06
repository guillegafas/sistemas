#! /bin/bash

while true
do
	read numero
	if [[ $numero = 0 ]]
	then
		break
	fi
	resultado=1
	for  ((i=1; i<=$numero; i++))
	do
		resultado=$(( $resultado * i ))
	done


	echo "$resultado"
done
