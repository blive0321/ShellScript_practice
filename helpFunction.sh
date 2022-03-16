#!/bin/bash

test_item=("cpu" "storage" "memory")

helpFunction(){
    echo "Usage: sh $0 -t <task> -s <sec>"
    echo -e "\t-t task name : cpu | storage | memory"
    echo -e "\t-s task seconds : 60"
    exit 1
}

# getopts用法 可取得呼叫此shell script時帶的參數
while getopts "t:s:*" opt ; do
    case "$opt" in
    t ) task="$OPTARG" ;;
    s ) sec="$OPTARG" ;;
    * ) helpFunction ;;
    esac
done

# 接著用-z判斷變數是否為NULL
if [ -z "${task}" ] || [ -z "${sec}" ]; then
    echo "Some of the options missing"
    helpFunction
else
    # a[@] =~ b 再判斷b是否在a陣列裡面, 辨別是否為程式可接受的任務
    if [[ ! "${task_item[@]}" =~ "${task}" ]]; then
        echo "-t ${task} : undefined testing type" ; FLAG_EXIT=1 ;
    fi
    if [[ ${FLAG_EXIT} -eq "1" ]]; then
        exit;
    fi
fi

echo -e "\ttask name = ${task}"
echo -e "\ttask seconds = ${sec}"

exit 0
