#!/bin/bash/


# first grep finds the hour (2 lines)
# second grep finds the AM/PM line corresponding to the hour (1 line)
# awk prints 1st set of data separated by the 'tab' character. It will also return the 2nd, 3rd, or 4th set of data depending on the third variable entered

# 3 input arguments required to complete the sh command to run this script correctly and return the desired result
# 1st input - $1 - date written in 4 digits for month and day, e.g. 0310 for March 10
# 2nd input - $2 - time of day written as two digits, e.g. 02 for 2
# 3rd input - $3 - distinction of AM/PM. To be written in capital letters in second grep command. Removed from script to align with assignment notes
        # entering 2 as the third variable will return the name of the BlackJack Dealer
        # entering 3 as the third variable will return the name of the Roulette Dealer
        # entering 4 as the third variable will return the name of the TexasHoldEm Dealer


grep $2 $1_Dealer_schedule | awk -F '\t' -v var=$3 '{print $1,$var}'
