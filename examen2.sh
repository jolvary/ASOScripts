#!/bin/bash

if [ $# -eq 2 ]
then
    if [[ $(id -nu $1) ]]
    then
        echo "Existe"
    else
        echo "No existe"
    fi
else
    echo "Debe introducir dos parámetros"
fi