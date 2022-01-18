#!/bin/bash

read -p "Introduce tres números separados por espacios: " num1 num2 num3;

for i in $num1 $num2 $num3
do
    if [[ $(($i % 2)) == 0 ]];
    then
        echo "El número $i es : Par";
    else
        echo "El número $i es : Impar";
    fi
done