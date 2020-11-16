#!/usr/bin/env python3

#dictionary stuff

#define items and prices
items=["tomato soup", "cheese", "bread", "milk", "butter", "coffee", "ice cream", "orange juice", "ramen"]
items_stock=[10, 14, 12, 8, 40, 2, 13, 6, 100]
items_prices=[1.85, 3.99, 2.50, 3.59, .99, 5.99, 2.99, 2.50, 0.85]

#create empty dictionaries
dict1 = {}
dict2 = {}

#fill dictionaries with stocks and prices
for i in items:
    dict1[i] = items_stock[items.index(i)]
    dict2[i] = items_prices[items.index(i)]

#print welcome and store
print('\nWelcome to Python Groceries! Here is our menu of items.')
for i in list(dict2.keys()):
    row = [i,  dict2[i]]
    print("{: >15} ${:.2f}".format(*row))
   
#ask if user would like to buy item
question = input("Would you like to purchase something? ")
if question.lower() != 'yes':
    exit()
#ask what user would like to buy
question2 = input('What would you like to buy? ').lower()
#error handling stuff
try:
    print('You selected ' + question2 + ', we have ' + str(dict1[question2]) + ' in stock')
except KeyError:
    print("Sorry we do not have that item in stock")
    exit()

#ask home many items to buy    
amount = input("How many " + question2 + " would you like to purchase? ")
#error handling
try:
    print("You want to purchase " + amount + ' ' + question2 
        + ' at $' + str(dict2[question2]) + ' each. Your total is $' +
        "{:.2f}".format(int(amount) * dict2[question2]) + '. Thanks for shopping.')
except ValueError:
    print("Please use an integer next time")
    exit()