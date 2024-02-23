#! /bin/bash


while true
do
	echo "Puedes meter numeros hasta que metas un 0 para cerrar el programa"
	read numero

	if [ $numero -eq 0 ]
	then
		echo "Cerrando programa"
		break
	fi
	echo "Tabla de multiplicar"

	for ((i=1; i<10; i++))
	do
		resultado=$((numero * i))
		echo "$numero * $i = $resultado "
	done
done
