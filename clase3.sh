#!/bin/bash

if [ "$#" -eq 1 ]; then

	echo "Decide cuántas líneas leer:
		1) La línea en posición N
		2) La última
		3) La primera
		4) Las líneas entre N y M
	"

	read clase1

	case $clase1 in

		1)

			if [ -f "$1" ];
			then
				read -p 'Introduce la línea que deseas leer: ' linea;

				contar=$(wc -l $1 | cut -f1 -d' ');

				if [ $linea -lt $contar ]; then
					head -n $linea $1 | tail -n 1;
				else
					echo "No hay tantas líneas.";
				fi
			else
				echo "El fichero no existe.";
	   		fi
			;;

		2)

			if [ -f "$1" ];
            then
				tail -n 1 $1;
            else
				echo "El archivo no existe.";
			fi
			;;

		3)

			if [ -f "$1" ];
			then
				head -n 1 $1;
			else
				echo "El archivo no existe.";
			fi
			;;

		4)

			if [ -f "$1" ];
			then
				read -p "Introduce las dos líneas limitadoras (Primera Segunda): " linea1 linea2;
				resta=$(($linea2 - $linea1));
				head -n $linea2 $1 | tail -n $resta;
			else
				echo "Algo ha salido mal";
			fi
			;;
	esac

else

	echo "No ha introducido un número de argumentos válido."
	exit

fi
