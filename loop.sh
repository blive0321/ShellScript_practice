#!/bin/bash

number=1
# while loop
while [ $number -le 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

number2=90
# until loop
until [ $number2 -gt 100 ]
do
    echo "$number2"
    number2=$(( number2+1 ))
done

# for loop
for i in 1 2 3 4 5
do
    echo $i
done

# for loop 2
for (( j=6; j<=10; j++ ))
do
    echo $j
done

# for + if
for (( l=0; l<=10; l++ ))
do
    if [ $l -eq 3 ] || [ $l -eq 7 ]
    then
        echo "Bingo!"
    fi
    echo $l
done