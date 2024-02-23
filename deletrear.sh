#!/bin/bash
echo "Introduce la palabra de maximo 10 letras"
read palabra

len=${#palabra}
for ((pos=0; pos<$len; pos++))
do
	#muestra la cadena palabra empezando por la posicion i y que saque un solo caracter
 
	echo "${palabra:$pos:1}"
	echo " "
done

