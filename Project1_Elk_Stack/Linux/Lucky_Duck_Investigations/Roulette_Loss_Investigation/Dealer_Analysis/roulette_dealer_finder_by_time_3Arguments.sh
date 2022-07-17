#!/bin/bash/


# first grep finds the hour (2 lines)
# second grep finds the AM/PM line corresponding to the hour (1 line)
# awk prints 1st, 2nd, 5th, 6th columns for that one row (Hour, AM/PM, Roulette Dealer First Name, Roulette Dealer Last Name)

# 3 input arguments required to complete the sh command to run this script correctly and return the desired result
# 1st input - $1 - date written in 4 digits for month and day, e.g. 0310 for March 10
# 2nd input - $2 - time of day written as two digits, e.g. 02 for 2
# 3rd input - $3 - distinction of AM/PM. To be written in capital letters

grep $2 $1_Dealer_schedule | grep $3 | awk '{print $1,$2,$5,$6}'
