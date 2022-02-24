#!/bin/bash

cont=0
let "cont2=cont+1"
while [ $cont -lt $# ]
do
    if [[ $(($1 % 2)) -eq 0 ]]
    then
        echo "pene"
        ((cont++))
    else
        echo "patata"
        ((cont++))
    fi
done
