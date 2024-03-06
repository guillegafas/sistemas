#!/bin/bash

tiempo_restante() {
    hora_final=23
    min_final=59

    min_ingresados=$((hora * 60 + minutos))

    tiempo_restante=$((1439 - $min_ingresados))

    echo $tiempo_restante
}

while true; do
        read hora_minutos

        IFS=":" read -r hora minutos <<< "$hora_minutos"
        if [ "$hora_minutos" == "00:00" ]; then
                exit 0;
        fi

        minutos_restantes=$(tiempo_restante)

        echo "$minutos_restantes"
done