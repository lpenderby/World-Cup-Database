#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#Parse through teams

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals 
do
  # Skips the first line
  if [[ $year != "year" ]]
  then
    GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    GET_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    # Checks if the winner team already exists
    if [[ -z $GET_WINNER_ID ]]
    then
      INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
    fi

    # Checks if the opponent team already exists
    if [[ -z $GET_OPPONENT_ID ]]
    then
      INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
    fi
    #Gets the team_id
    GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    GET_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    # Inserts the game data into games
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $GET_WINNER_ID, $GET_OPPONENT_ID, $winner_goals, $opponent_goals)")
  fi
done
