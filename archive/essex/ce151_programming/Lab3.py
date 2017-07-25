"""
Assignment 3
"""

def get_input():
    char = input("Enter character>>> ")
    length = int(input("Enter length>>> "))
    if length > 40:
        print("Dude no that's way high")
        return
    elif length < 1:
        print("Dude that's way too low")
        return
    
    c = char
    
    while(length > 0):
        i = length - 1
        empty = ""
        while(i > 0):
            empty = empty + ' '
            i = i - 1
            
        row = empty + char
        print(row)
        
        char = char + c
        
        length = length - 1
        
while(1):
    get_input()
