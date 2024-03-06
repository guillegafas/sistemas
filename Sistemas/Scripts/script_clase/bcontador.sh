#!/bin/bash

read num1
read num2

if [[ $num1 -gt $num2 ]]; then
  mayor=$num1
  menor=$num2
else
  mayor=$num2
  menor=$num1
fi
for (( i=$menor; i<=$mayor; i++ )); do
  echo $i
done

