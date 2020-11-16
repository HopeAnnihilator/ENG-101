#!/usr/bin/env python3

from my_pangram import pangram

string = input("Input string? ")
bool = pangram(string = string)

if bool:
    print("The string is a pangram")
else:
    print("The string is not a pangram")
