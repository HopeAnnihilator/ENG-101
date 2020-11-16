#!/usr/bin/env python3

def pangram(string):
    string = string.upper()
    letters = "GJECTPADSBQZIFHUMXYLOKNVWR"
    for i in string:
        if i:
            letters = letters.replace(i, '')
    if letters:
        return False
    else:
        return True
    
