#!/bin/bash

read -p "Introduce tres números separados por espacios: " num1;

mas=""
menos=""
masn=0
menosn=0
ceron=0

for i in $num1
do
    if [[ $i -eq 0 ]];
    then
        ((ceron=ceron+1));
    elif [[ $i -lt 0 ]];
    then
        menos+="${i} ";
        ((menosn=menosn+1));
    else
        mas+="${i} ";
        ((masn=masn+1));
    fi
done

echo "Ha introducido un total de $ceron números igual a 0."
echo "Ha introducido un total de $masn números mayores a 0, y son : $mas"
echo "Ha introducido un total de $menosn números menores a 0, y son : $menos"