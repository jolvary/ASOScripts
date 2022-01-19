#!/bin/bash

read -p "Introduce tres números separados por espacios: " num1 num2 num3;

par="";
impar="";

for i in $num1 $num2 $num3
do
    if [[ $(($i % 2)) == 0 ]];
    then
        par+="${i} ";
    else
        impar+="${i} ";
    fi
done

echo "Los números pares: $par"
echo "Los númeors impares: $impar"