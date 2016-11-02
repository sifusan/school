"""
ass1.py
CE151 assignment 1 template
created by sands 30/10/10
modified by sands 28/10/11 - number of exercises changed
modified by sands 28/10/6 - number of exercises changed, example added
"""

from math import sqrt
from math import atan
from math import degrees

def ex0():
    """
    example
    use 8 at exercise selection prompt in my code to select it
    """
    i = int(input("Enter a non-negative integer: "))
    if i<0:
        print("Negative numbers do not have real square roots")
    else:
        root = sqrt(i)
        print("The square root is", round(root, 2))

def greater_than_zero(*args):
    """
    check any number of arguments that must be greater than zero or function will abort
    use as failsafe for user input
    arguments:
    *args : list of arguments to be checked
    """
    for c in args:
        if c <= 0:
            print("Invalid input, cannot be less than zero")
            print("Aborted")
            return
        
def ex1():
    """
    exercise 1
    """

    height = float(input("Enter height of the triangle>>> "))
    width = float(input("Enter width of the triangle>>> "))

    greater_than_zero(height, width)

    hypotenuse = sqrt(height**2 + width**2)

    print("Length of the hypotenuse is %.1f" % hypotenuse)

    heigth_hypotenuse_radians = atan(height/width)

    heigth_hypotenuse_angle = degrees(heigth_hypotenuse_radians)
    
    width_hypotenuse_angle = 90 - heigth_hypotenuse_angle

    print("The two remaining angles are at %.1f and %.1f degress" %
          (heigth_hypotenuse_angle, width_hypotenuse_angle))
    
def ex2() :
    """
    exercise 2
    """
    n = int(input("Enter how many numbers of fibonacci you want to display>>> "))
    greater_than_zero(n)

    fib = 1 #sequence always starts at 1
    pre_fib = 0 #use this to properly calculate next number in the sequence
    
    for i in range(n):
        print(str(fib) + ",", end='')
        fib = pre_fib + fib
        pre_fib = fib - pre_fib
    
def ex3() :
    """
    exercise 3
    """
    x = int(input("Enter a value for x>>> "))
    y = int(input("Enter a value for y>>> "))
    
    greater_than_zero(x, y)

    if y > x:
        print("No possible combinations when y > x, result is 0")
        return
    elif y == 1:
        print("Since y is 1 the expresion is always \'x\', which now is %d" % x)
        return
    elif y == x:
        print("Since y == x the result is 1")
        return
    
    n = x-y+1
    
    for i in range(n+1, x+1):
        n = n * i

    k = 1

    for i in range(k, y+1):
        k = k * i
        
    binomial_coef = n//k

    print("The binomial coefficient of %d and %d is %d" % (x, y, binomial_coef))
    
def ex4() :
    """
    exercise 4
    """
    user_string = input("Enter a sequence of words>>> ")
    sequence = user_string.split()

    shortest = ""
    longest = ""
    
    for c in sequence:
        if len(shortest) == 0 or len(c) < len(shortest):
            shortest = c
        if len(longest) == 0 or len(c) > len(longest):
            longest = c
            
    print("The length of the shortest word \'%s\' is %d" % (shortest, len(shortest)))   
    print("The length of the longest word \'%s\' is %d" % (longest, len(longest)))
    
def ex5() :
    """
    exercise 5
    """

    user_string = input("Enter a line of text")
    
    #print("Exercise 5 not attempted")
    
def ex6() :
    """
    exercise 6
    """
    print("Exercise 6 not attempted")
    
def ex7() :
    """
    exercise 7
    """
    print("Exercise 7 not attempted")


# modify the following line so that your name is displayed instead of Lisa's
print("CE151 assignment 1 - Lisa Simpson")

# do not modify anything beneath this line
exlist = [None, ex1, ex2, ex3, ex4, ex5, ex6, ex7, ex0]
running = True
while running :
    line = input("Select exercise (0 to quit): ")
    if line == "0" : running = False
    elif len(line)==1 and "1"<=line<="8": exlist[int(line)]()
    else : print("Invalid input - try again")
