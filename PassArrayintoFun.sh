#!/bin/bash

Count=6
# 宣告陣列
Dimm=(A0 B0 C0 D0 E0 F0)


function Yell(){
    echo "${1}  and   ${2}."
}

# 執行6圈
for i in $(seq ${Count})
do
    # 傳送2個參數: CE 和 Dimm陣列
    Yell CE ${Dimm[$((${i}-1))]} 
done
