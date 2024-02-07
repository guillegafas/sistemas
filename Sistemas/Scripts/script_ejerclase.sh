#! /bin/bash

grupoA=("A" "B" "C" "D" "E" "F" "G" "H")
grupoB=("I" "J" "K" "L" "M" "N" "S" "O")

#creamos el randomizador

contador=1
partidos=()
while [ ${#grupoA[@]} -gt 0 ]
do

	indiceA=$((RANDOM % ${#grupoA[@]})) #esto coge un numero random de la longitud de la lista
	indiceB=$((RANDOM % ${#grupoB[@]})) #y lo mete en una variable indice

	randomA=${grupoA[$indiceA]} #esto coge el elemento de la lista en base al indice 
	randomB=${grupoB[$indiceB]} 

	echo "Partido $contador : $randomA vs $randomB"
	#guarda el partido y los equipos
	partidos+=("Partido $contador : $randomA vs $randomB")

	# Utilizar unset para eliminar el elemento de las listas
	# pero la lista se queda desoordenada por eso hay que volver a
	# asignarla con grupoA=("${grupoA[@]}")

	unset grupoA[$indiceA]
	grupoA=("${grupoA[@]}")

	unset grupoB[$indiceB]
	grupoB=("${grupoB[@]}")

	contador=$((contador + 1))
done

#Ahora pedimos que metan los ganadores de cada partido

indice_partido=0
for partido in "${partidos[@]}"
do
	echo "Dime el equipo que ha ganado en el $partido"
	read ganador
	ganadores[$indice_partido]=$ganador
	indice_partido=$((indice_partido + 1))
done

echo "los ganadores: ${ganadores[@]}"

locales=()
visitantes=()


for ((i=0; i<4; i++)) #esta interaccion es para meter 4 ganadores en locales
do
	indice=$((RANDOM % ${ganadores[@]})) #esto coge un numero random 
         #y lo mete en una variable indice

        locales+=${ganadores[$indice]} #esto coge el elemento de la lista en base 
	
done

echo "los locales son ${locales[@]}"
