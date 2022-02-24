#!/bin/bash

if [ $# -eq 2 ]
then
    if [[ $(id -nu $1) ]] && [[ $(id -nu $2) ]]
    then
        if [[ $1 -gt $2 ]]
        then
            primero=$(grep -n :$2: /etc/passwd | cut -f1 -d':')
            segundo=$(grep -n :$1: /etc/passwd | cut -f1 -d':')
            echo "La cantidad de líneas entre ambos es de: " $((primero - segundo))
        else
            primero=$(grep -n :$1: /etc/passwd | cut -f1 -d':')
            segundo=$(grep -n :$2: /etc/passwd | cut -f1 -d':')
            echo $(($primero-$segundo))
        fi
    else
        echo "No existe uno o ambos UIDs"
    fi
else
    echo "Debe introducir dos parámetros"
fi