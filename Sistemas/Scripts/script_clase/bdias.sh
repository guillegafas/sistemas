#!/bin/bash

while true; do
    read dia_entrada
    if [ -z "$dia_entrada" ]; then
        exit 0
    fi
    dia_entrada=$(echo "$dia_entrada" | sed 's/^0*//')
    if [[ ! "$dia_entrada" =~ ^([0-2]?[0-9]|3[01])/(0?[1-9]|1[0-2])$ ]]; then
        continue
    fi
    dia=$(echo "$dia_entrada" | cut -d'/' -f1)
    mes=$(echo "$dia_entrada" | cut -d'/' -f2)
    dia=$((10#$dia))
    mes=$((10#$mes))
    dias_mes=(0 30 28 30 30 30 30 30 30 30 30 30 30)
    dias_pasados=0
    for ((i = 1; i < mes; i++)); do
        dias_pasados=$((dias_pasados + dias_mes[i]))
    done
    dias_pasados=$((dias_pasados + dia))
    echo $dias_pasados
done
