#!/bin/bash

if [ "$#" -eq 1 ]; then

	echo "Decide qué hacer con el archivo:
		1) Crear
		2) Borrar
		3) Salir
	"

	read clase1

	ruta=$(pwd $1)

	case $clase1 in

		1)
			if [ -f "$1" ];
			then
				echo "El archivo ya existe.";
			else
				echo "El archivo $1 ha sido creado en " $ruta;
				touch $1;
				ls -l $1;
	   		fi
			;;
		2)
			if [ -f "$1" ];
                	then
				echo "El archivo $1 ha sido eliminado.";
                        	rm -fr $1;
                	else
				echo "El archivo no existe.";
	  		fi
			;;
		3) 
		exit
		;;

	esac

else

	echo "Hay más de un argumento."
	exit

fi
