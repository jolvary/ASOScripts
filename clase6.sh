#!/bin/bash

if [[ "$1" = /* ]]; then

    if [[ [[ -d "$1" ]] || [[ -f "$1" ]] ]]; then

        echo "Introduce qué quieres hacer con el directorio:

        a. Comprimir
            b. Comprimir y copiar
            c. Descomprimir
            d. Descomprimir en carpeta
            e. Salir
        "

        read tarea

        archivo=$(echo $1 | rev | cut -f1 -d'/' | rev);

        case $tarea in

            a)

                tar -czvf $archivo.tar.gz $1;
                ;;

            b)

                tar -czvf $archivo.tar.gz $1;
                mv ./$archivo.tar.gz ./Seguridad/;
                ;;

            c)

                tar -xzvf $archivo;
                ;;

            d)

                read -p "Escriba la ruta absoluta en la que quiere descomprimir el archivo: " desc;

                if [[ "$1" = /* && -d "$1" ]]; then

                    tar -xzvf $archivo -C $desc;

                else

                    echo "La ruta introducida no es válida."

                fi
                ;;

            e) 

                exit
                ;;

        esac
    
    fi;

else
    echo "El directorio no existe o no has introducido la ruta absoluta."
fi;
