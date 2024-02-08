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
	indice=$((RANDOM % ${#ganadores[@]})) #esto coge un numero random 
         #y lo mete en una variable indice

        locales+=("${ganadores[$indice]}") #esto coge el elemento de la lista en base 
	
	unset ganadores[$indice]
        ganadores=("${ganadores[@]}")
done

visitantes=("${ganadores[@]}") #los equipos visitantes seran los que sobren de ganadores
echo "los locales son ${locales[@]}"
echo "los visitantes son ${visitantes[@]}"

#vamos a ver los siguientes partidos, hacemos un for donde en la lista partidos meta
#al local[0] con el visitante[0] y así sucesivamente 

contador=1
partidos=()
for ((i=0; i<${#locales[@]}; i++))
do
	partidos+=("Partido $contador: ${locales[i]} vs ${visitantes[i]}")
	echo "Partido $contador: ${locales[i]} vs ${visitantes[i]}"
	contador=$((contador + 1))
done

#ahora preguntamos por los partidos y guardamos los nuevos ganadores:

indice_partido=0
for partido in "${partidos[@]}"
do
        echo "Dime el equipo que ha ganado en el $partido"
        read ganador
        ganadores[$indice_partido]=$ganador
        indice_partido=$((indice_partido + 1))
done

echo "los ganadores: ${ganadores[@]}"

#ahora creamos los partidos

partidos=()

partidos+=("Semifinal 1: ${ganadores[0]} vs ${ganadores[1]}")
partidos+=("Semifinal 2: ${ganadores[2]} vs ${ganadores[3]}")

echo "${partidos[0]}"
echo "${partidos[1]}"

#Preguntamos por ganadores
indice_partido=0
for partido in "${partidos[@]}"
do
        echo "Dime el equipo que ha ganado en el $partido"
        read ganador
        ganadores[$indice_partido]=$ganador
        indice_partido=$((indice_partido + 1))
done

echo "La final es ${ganadores[0]} vs ${ganadores[1]}"

echo "¿Qué equipo ha ganado la final?"
read ganador_final
echo "Enhorabuena equipo $ganador_final"
