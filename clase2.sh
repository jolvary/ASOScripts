#!/bin/bash

if [ "$#" -eq 1 ]; then

	echo "Decide qué hacer con el archivo:
		1) Eliminar fichero
		2) Crear el fichero
		3) Contar el número de líneas que tiene
	"

	read clase1

	ruta=$(pwd $1)

	case $clase1 in

		2)
			if [ -f "$1" ];
			then
				echo "El archivo ya existe.";
			else
				echo "El archivo $1 ha sido creado en " $ruta;
				touch $1;
				ls -l $1;
	   		fi
			;;
		1)
			if [ -f "$1" ];
                	then
				echo "El archivo $1 ha sido eliminado.";
                        	rm -fr $1;
                	else
				echo "El archivo no existe.";
	  		fi
			;;
		3)

			lineas=$(wc -l $1)
			echo "El número de líneas en el archivo es de" $lineas;;

	esac

else

	echo "Hay más de un argumento."
	exit

fi
