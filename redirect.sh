#!/bin/bash

# 1 means standard output
# 2 means standard error
# ls +al is not a correct command, so the error will output to "error.log"
ls +al 1> show.log 2> error.log

# or you can combine 1 & 2 to the same file "check.log"
ls +al > check.log 2>&1
#same command:"ls +al >& check.log"