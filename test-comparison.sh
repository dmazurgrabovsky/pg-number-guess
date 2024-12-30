#!/bin/bash
echo -e "\nTest bash comparison of string and INT"

RANDOM_NUMBER=$(( RANDOM % 1 + 2 ))
echo $RANRANDOM_NUMBER

TEST_VALUES=( "1" "2" "3")  

for NEXT_NO in "${TEST_VALUES[@]}"; 
do
    if [[ $NEXT_NO -gt $RANDOM_NUMBER ]] 
    then 
        echo "It's higher than that, guess again:"
    elif [[ $NEXT_NO -lt $RANDOM_NUMBER ]] 
    then
        echo "It's lower than that, guess again:"
    else
        echo "You guessed it "
    fi
done
