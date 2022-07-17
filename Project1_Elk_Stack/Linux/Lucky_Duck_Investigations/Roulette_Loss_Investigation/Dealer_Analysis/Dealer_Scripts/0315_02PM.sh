#!/bin/bash/


# first grep finds the hour (2 lines)
# second grep finds the AM/PM line corresponding to the hour (1 line)
# awk prints 1st, 2nd, 5th, 6th columns for that one row (Hour, AM/PM, Roulette Dealer First Name, Roulette Dealer Last Name)
grep 02 ../0315_Dealer_schedule | grep PM | awk '{print $1,$2,$5,$6}'
