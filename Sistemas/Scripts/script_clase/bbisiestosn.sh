#!/bin/bash

while true; do

read ano

if [ $ano -eq 0 ]; then
	break
fi

if [ $((ano % 4)) -eq 0 ]; then
	echo "s"
elif [ $((ano % 100)) -ne 0 ] && [ $((ano % 400)) -eq 0 ]; then
	echo "s"
else
	echo "n"
fi

done
