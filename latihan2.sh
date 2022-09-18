#!/bin/bash

printf 'please input the first number : '
read a

printf 'please input the second number : '
read b

if [ $a -gt $b ]
then
echo a is more than b
elif [ $a -lt $b ]
then
echo a is less than b
elif [ $a -eq $b ]
then
echo a is equal to b
fi
