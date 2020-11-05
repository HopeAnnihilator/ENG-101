#!/usr/bin/env python3

# Rock, Paper, Scissors

# import random.choice
from random import choice as rps

#create database for info to be stored in
data = {
    "winningScore": 3,
    "compChoice": None,
    "userChoice": None,
    "options": {
        "rock": ["r", "1", "rock"],
        "paper": ["p", "2", "paper"],
        "scissors": ["s", "3", "scissors"]
    },
    "scores": {
        "computer": 0,
        "player": 0
    }
}

# allow user to select rock, paper, or scissors
def userChoice():
    choice = input(
        "\nChoose \n" +
        "1. Rock (s)\n" +
        "2. Paper (p)\n" + 
        "3. Scissors (s)\n"
    )
    # verify user chose a valid option before returning to primary function
    for key in data["options"].keys():
        if choice.lower() in data["options"][key]:
            data["userChoice"] = key
            return
    # if user did not input valid choice print instructions and ask again
    print("Unexpected Response")
    print("Please Input Data in one of these Formats: " + ', '.join(data["options"]["rock"]))
    userChoice()

# find who won the match
def findWinner():
    # if both computer and player chose the same option return tie
    if data["compChoice"] == data["userChoice"]:
        return 'Tie'
    # check if computer won by comparing their answer's index - 1 to the answer of the player in a messy bit of code
    elif list(data['options'])[list(data["options"]).index(data["compChoice"]) - 1] == data["userChoice"]:
        # if computer won, give it a point
        data["scores"]["computer"] += 1
        return 'Computer Wins'
    else:
        # if computer did not win, give player a point 
        data["scores"]["player"] += 1
        return 'Player Wins'

# loop until the player or computer win 3 rounds
while max(data["scores"].values()) < data["winningScore"]:
    # let computer choose an option
    data["compChoice"] = rps(list(data["options"].keys()))
    # call function for user to choose an option
    userChoice()
    # print winner of round
    print(findWinner())

# when game ends print final scores
print(
    "\n\nFinal Scores\n" +
    "Computer: " + str(data["scores"]["computer"]) + '\n'
    "Player: " + str(data["scores"]["player"])
)
