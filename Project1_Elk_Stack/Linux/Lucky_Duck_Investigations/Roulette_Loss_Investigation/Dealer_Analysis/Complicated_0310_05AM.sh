#!/bin/bash/

# Isolate the time for the date/time of this loss
echo Date: $1
echo Time: $2
# use grep to isolate a line in the Roulette_Losses file, then pipe that stdout as stdin to awk command



# Isolate the AM/PM specification of this loss
grep $1_win_loss_player_data:$2:00:00 $3 ../../Player_Analysis/Roulette_Losses | awk '{print $2}'
echo $3


# Isolate the FIRST NAME of the Roulette Dealer
echo First Name: 
# pipe grep stdout to awk as stdin
# awk '{print $5}' ../0310_Dealer_schedule  returns entire FIRST NAME column from the specified file
##awk '{print $5}' ../0310_Dealer_schedule
echo 

# Isolate the LAST NAME of the Roulette Dealer
echo Last Name: 
# awk '{print $6}' ../0310_Dealer_schedule  returns entire LAST NAME column from the specified file
##awk '{print $6}' ../0310_Dealer_schedule
echo 



# OTHER OPTION - both names in one command
echo Roulette Dealer Name: 
# awk '{print $5,$6}' ../0310_Dealer_schedule  returns the entire FIRST NAME and LAST NAME colums from the specified file
##awk '{print $5,$6}' ../0310_Dealer_schedule
