#!/bin/bash

if [ $# -eq 2 ]
then
    if [[ $(id -nu $1) ]] && [[ $(id -nu $2) ]]
    then
        if [[ $1 -gt $2 ]]
        then
            primero=$(grep -n :x:$2: /etc/passwd | cut -f1 -d':')
            segundo=$(grep -n :x:$1: /etc/passwd | cut -f1 -d':')
            echo "La cantidad de usuarios con UID entre ambos parámetros es de: " $((segundo-primero-1))
        else
            primero=$(grep -n :x:$1: /etc/passwd | cut -f1 -d':')
            segundo=$(grep -n :x:$2: /etc/passwd | cut -f1 -d':')
            echo "La cantidad de usuarios con UID entre ambos parámetros es de: " $((segundo-primero-1))
        fi
    else
        echo "No existe uno o ambos UIDs"
    fi
else
    echo "Debe introducir dos parámetros"
fi