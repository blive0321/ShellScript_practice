#!/bin/bash

# -z 判斷字串是否為空值、空值為True，注意[]內的變數要用雙引號，因為是判斷字串
a=""
if [ -z "${a}" ]
then
    echo "a is empty."
else
    echo "a is not empty."
fi
# a is empty.

# -n 判斷字串是否不為空值，不為空值的話為True，注意[]內的變數要用雙引號，因為是判斷字串
b="123"
if [ -n "${b}" ]
then
    echo "b is not empty."
else
    echo "b is empty."
fi
# b is not empty

countA=9
# -eq means equal "="
if [ $countA -eq 9 ]
then
    echo "countA = 9"
else
    echo "countA != 9"
fi

countB=1
# -ne measn not equal "!="
if [ $countB -ne 0 ]
then
    echo "countB != 0"
else
    echo "countB = 0"
fi

countC=100
# -gt means greater than ">"
if [ $countC -gt 50 ]
then
    echo "countC > 50"
else
    echo "countC < 50"
fi

countD=23
# -lt means less than "<"
if [ $countD -lt 50 ]
then
    echo "countD < 50"
else
    echo "countD > 50"
fi

countE=88
# -ge means greater equal ">="
if [ $countE -ge 88 ]
then
    echo "countE >= 88"
else
    echo "countE < 88"
fi

countF=33
# -le means less equal "<="
if [ $countF -le 33 ]
then
    echo "countF <= 33"
else
    echo "countF > 33"
fi

countG=100
# (( ))
if (( $countG > 99 ))
then
    echo "countG > 99"
else
    echo "countG < 99"
fi

countH=500
# multiple condition judge : -a means "and(&&)"
if [ $countH -gt 100 -a $countH -lt 1000 ]
then
    echo "countH > 100 && < 1000"
else
    echo "countH < 100 or > 1000"
fi

countI=1000
# multiple condition judge : -o means "or(||)"
if [ $countI -lt 100 -o $countI -gt 900 ]
then
    echo "countI < 100 or > 900"
else
    echo "countI > 100 and < 900"
fi