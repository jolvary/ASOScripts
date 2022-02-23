read -n 7 -p "Introduce dos números de 3 dígitos cada uno: " num1 num2

for i in num1 num2
do
  if [[ $i -eq ((echo $i | rev )) ]]
  then
    echo "El numero es capicua"
  else
    echo "El numero no es capicua
done
