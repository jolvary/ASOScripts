#!/bin/bash

read -p "Ey ey ey ey ey ey ey: " lista

for ele in $lista
do
grep ":$ele:" /etc/passwd
done            