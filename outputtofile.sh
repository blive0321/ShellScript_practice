# 1. output the kernel version of your operation system
echo "The following information is about your comouter:"
uname -a

# 2. output the kernel version of your operation system to the "info.log" file
echo "And also we will put that information into the file > info.log"
echo `uname -a` > info.log

# 3. use `>>` to append the date time into "info.log" file
date >> info.log
