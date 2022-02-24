#!/bin/bash

if [ $# -eq 2 ]
then
    if [[ $(id -nu $1) ]] && [[ $(id -nu $2) ]]
    then
        echo "Existe"
    else
        echo "No existe uno o ambos UIDs"
    fi
else
    echo "Debe introducir dos parámetros"
fi