#! /bin/bash

echo "Seleccione tipo de vehiculo introduciendo el numero"
echo "1 - Coche"
echo "2 - moto"
echo "3 - Bus"
echo "4 - Otro"
echo "5 - salir"
read numero
total=0
while true
do
	if [ $numero -eq 1 ]
	then
		echo "el importe a cobrar es 10€"
		total=$(($total + 10))
	fi

	if [ $numero -eq 2 ]
        then
                echo "el importe a cobrar es 5€"
                total=$(($total + 5))
        fi
	
	if [ $numero -eq 3 ]
        then
                echo "el importe a cobrar es 20€"
                total=$(($total + 20))
        fi
	if [ $numero -eq 4 ]
        then
                echo "introduzca el importe"
		read importe

                total=$(($total + $importe))
        fi

	if [ $numero -eq 5 ]
        then
		echo "El total a pagar es: $total"
                break
        fi
echo "Introduzca otro numero si desea pagar mas o introduzca 5 para salir"
read numero

done

