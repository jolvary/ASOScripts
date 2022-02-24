#!/bin/bash

read -p "Qué desea realizar : 
    1. GID
    2. UID
    3. Salir

Opción: 
    " opcion

case $opcion in
    1)
    read -p "Introduce el número del GID deseado : " gid
    glist=$(cut -f4 -d':')
    echo $glist
    ;;
    2)
    read -p "Introduce el número del UID deseado : " uid
    if [[ $((3 % 2)) -eq 0 ]]
    then
        echo "algo"
    else
        anterior=$((uid - 1))
        echo $anterior
        posterior=$((uid + 1))
        echo $posterior
        echo $(id -nu $anterior)
        echo $(id -nu $posterior)
    fi
    ;;
    3)
    exit;
    ;;
esac