#! /bin/bash

anterior=0
while true
do
	read numero
	resultado=$(($numero - $anterior))
	echo "$resultado"
        if [ $numero -eq 0 ]; then
		exit 0
	fi
	anterior=$numero
done
