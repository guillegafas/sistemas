#! /bin/bash

anterior=0
while true
do
	read numero
	resultado=$(($numero - $anterior))
	echo "$resultado"
	anterior=$numero
done
