#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
# --no-align - in this case use IFS='|' and read variable one by one
# without - insert BAR between each variables

#generate number from 1 to 1000
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))

#user: find existing or create
echo "Enter your username:"
read USER_NAME

USER_READ_RESULT=$($PSQL "select user_id, count(*) as game_count, min(guess_no) as min_guess_no 
  from users left join games USING (user_id) where name='$USER_NAME' 
  group by user_id;" )

#important - inline IFS
IFS='|' read USER_ID GAME_COUNT MIN_GUESS_NO <<< "$USER_READ_RESULT"
# if user is not found in db
if [[ -z $USER_ID ]] 
then
  #add user to db
  USER_INSERT_RESULT=$($PSQL "insert into users (name) values ('$USER_NAME')" )
  #reread user id
  USER_READ_ID=$($PSQL "select user_id from users where name='$USER_NAME'" )
  IFS='|' read USER_ID <<< "$USER_READ_ID"

  echo "Welcome, $USER_NAME! It looks like this is your first time here."
else
  #greet the user
  echo "Welcome back, $USER_NAME! You have played $GAME_COUNT games, and your best game took $MIN_GUESS_NO guesses."
fi

#guess game starts here
echo "Guess the secret number between 1 and 1000:"
GUESS_NO=0;
#endless loop to be exited via exit
until false; do
  (( GUESS_NO++ ))
  #read number
  read NEXT_NO
  # echo $RANDOM_NUMBER
  #validate integer
  if [[ ! "$NEXT_NO" =~ ^[0-9]+$ ]]; 
  then
    echo "That is not an integer, guess again:"
  else
    #compare to the secret random number
    if [[ $NEXT_NO -gt $RANDOM_NUMBER ]] 
    then 
      echo "It's higher than that, guess again:"
    elif [[ $NEXT_NO -lt $RANDOM_NUMBER ]] 
    then
      echo "It's lower than that, guess again:"
    else
      #success, store the game result to db
      GAME_ADD_RESULT=$($PSQL "insert into games (user_id, guess_no) values ($USER_ID, $GUESS_NO)" )

      #success
      echo "You guessed it in $GUESS_NO tries. The secret number was $RANDOM_NUMBER. Nice job!"
      exit
    fi
  fi
done
