read -n 7 -p "Introduce dos números de 3 dígitos cada uno: " num1 num2

echo

for i in $num1 $num2
do
reverso=$(echo $i | rev);
if [[ $i -eq $reverso ]]
  then
    echo "El numero es capicua"
  else
    echo "El numero no es capicua"
fi
done
