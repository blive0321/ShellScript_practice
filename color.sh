#!/bin/bash

# 改變bash shell輸出顏色，格式為\e[樣式;文字顏色;背景顏色m，結尾\e[0m
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
BGRED="\e[41m"
BGGREEN="\e[42m"
BGYELLOW="\e[43m"
BGBLUE="\e[44m"
END="\e[0;39m"

# 樣式：
# 0 一般樣式
# 1 粗體
# 4 加底線
# 5 灰底
# 7 文字及背景顏色對調

# 文字顏色：
# 30 黑色
# 31 紅色
# 32 綠色
# 33 黃色
# 34 藍色
# 35 紫色
# 36 青綠
# 37 白色

# 背景顏色：
# 40 黑色
# 41 紅色
# 42 綠色
# 43 黃色
# 44 藍色
# 45 紫色
# 46 青綠
# 47 白色