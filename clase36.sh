#!/bin/bash

cont=0

while [ $cont -lt $# ]
do
    if [[ $(($1 % 2)) -eq 0 ]]
    then
        echo "pene"
    else
        echo "patata"
    fi
done
