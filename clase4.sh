#!/bin/bash

read -p "Introduce tu nota (No se admiten decimales): " nota;

case $nota in
    [0-4]) echo "No Apto";;
    5) echo "APTO";;
    6) echo "BIEN";;
    [7-8]) echo "NOTABLE";;
    [9-10]) echo "SOBRESALIENTE";;
esac