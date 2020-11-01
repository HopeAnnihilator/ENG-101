#!/usr/bin/env python3

# create list of default people
people = ["Tyler Steinkamp", "Falcon", "Dwayne Johnson"]

# set the location and date
location = "Heart Attack Grill"
date = "Saturday, October 31 at 3pm"

# invite each person to dinner
for i in range(0, len(people)):
    print(people[i] + ", you're invited to dinner at " + location + " on " + date)

# swap person who cant make it and print new invite
people[1] = "Ryan Reynolds"
print(people[1] + ", you're invited to dinner at " + location + " on " + date)

# create array for more people to invite
morePeople = ["Dr. English", "Dr. Mario", "Luigi"]

# invite Dr. English at start of list
people.insert(0, morePeople[0])
print(people[0] + ", you're invited to dinner at " + location + " on " + date)

# invite others are middle and end of list
people.insert(round(len(people) / 2), morePeople[1])
people.append(morePeople[-1])

# print invites for the new people
print(people[people.index(morePeople[1])] + ", you're invited to dinner at " + location + " on " + date)
print(people[-1] + ", you're invited to dinner at " + location + " on " + date)

# uninvite the 2 final people
for i in range(0, 2):
    print("I'm sorry " + people[-1] + ", but you can't come to my house for dinner")
    people.pop()
    
# sort and print list
people.sort()
print(people)
