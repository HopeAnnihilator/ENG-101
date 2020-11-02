#!/usr/bin/env python3

from random import choice as rps

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

def userChoice():
    choice = input(
        "\nChoose \n" +
        "1. Rock (s)\n" +
        "2. Paper (p)\n" + 
        "3. Scissors (s)\n"
    )
    for key in data["options"].keys():
        if choice.lower() in data["options"][key]:
            data["userChoice"] = key
            return
    print("Unexpected Response")
    userChoice()

def findWinner():
    if list(data["options"]).index(data["compChoice"]) == list(data["options"]).index(data["userChoice"]):
        return 'Tie'
    elif (list(data["options"]).index(data["compChoice"]) - 1) == list(data["options"]).index(data["userChoice"]):
        data["scores"]["computer"] += 1
        return 'Computer Wins'
    elif data["compChoice"] == "rock" and data["userChoice"] == "scissors":
        data["scores"]["computer"] += 1
        return 'Computer Wins'
    else:
        data["scores"]["player"] += 1
        return 'Player Wins'

while max(data["scores"].values()) < data["winningScore"]:
    data["compChoice"] = rps(list(data["options"].keys()))
    userChoice()
    print(findWinner())

print(
    "\n\nFinal Scores\n" +
    "Computer: " + str(data["scores"]["computer"]) + '\n'
    "Player: " + str(data["scores"]["player"])
)
