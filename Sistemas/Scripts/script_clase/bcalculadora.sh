#!/bin/bash

read A
total=$A

while true; do

read operacion
if [ "$operacion" != "=" ]; then
	read B
fi

case $operacion in
      		"+")
		 total=$((total + B));;
      		"-")
		 total=$((total - B));;
     	 	"*")
		 total=$((total * B));;
      		"/")
                 total=$((total / B));;
                "=")
		  echo "$total"
                 exit 0;;
esac
done
