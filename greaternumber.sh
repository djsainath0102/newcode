in
#!/bin/bash
read -p "Enter the first value:" num1
read -p "Enter the second value:" num2
read -p "Enter the third value:" num3
if (($num1> $num2))&&(($num1>$num3))
then
  echo "$num1 is big"
elif (($num2>$num3))
then
  echo "$num2 is big"
elif (($num3>num2))
then 
echo "$num3 is big"
fi 
