#! /bin/bash

while true
do
	read numero
	resultado=1
	for  ((i=1; i<=$numero; i++))
	do
		resultado=$(( $resultado * i ))
	done


	echo "$resultado"
done
