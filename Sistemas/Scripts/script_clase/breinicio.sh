#!/bin/bash

while true; do
    read hora

    if [ "$hora" == "00:00" ]; then
        break
    fi

    if [[ ! "$hora" =~ ^[0-2][0-9]:[0-5][0-9]$ ]]; then
        continue
    fi
    
    minutos_reinicio=$(date -d "00:00" +"%s")/60
    minutos_ingresados=$(date -d "$hora" +"%s")/60

    # Calcular la diferencia de minutos hasta el reinicio
    echo "$minutos_ingresados"
    echo "$minutos_reinicio"
    diferencia_minutos=$((minutos_reinicio - minutos_ingresados))

    # Mostrar el resultado
    echo "$diferencia_minutos"
done
