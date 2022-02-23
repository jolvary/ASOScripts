read -n 7 -p "Introduce dos números de 3 dígitos cada uno: " num1 num2

for i in num1 num2
do
reverso=$(echo $i | rev);
echo $reverso
done
