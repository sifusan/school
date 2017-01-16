"""
Additional Exercise 1a and 1b
"""

def get_first_cost():
    print("Cost of first item\n")
    
    pounds = float(input("Enter pounds>>> "))
    pence_input = float(input("Enter pence>>> "))

    pence = pence_input/100
    
    cost = pounds + pence
    
    if pence_input % 10 == 0:    
        print("cost for 1st item is " + str(cost) +"0")
    else:
        print("cost for 1st item is " + str(cost))
    return cost

def get_second_cost():
    print("\nCost of the second item\n")

    pounds = float(input("Enter pounds>>> "))
    pence_input = float(input("Enter pence>>> "))

    pence = pence_input/100
    
    cost = pounds + pence

    if pence_input % 10 == 0:    
        print("cost for 1st item is " + str(cost) +"0")
    else:
        print("cost for 1st item is " + str(cost))
    return cost
    
def money_tendered(cost1, cost2):
    print("\nMoney tendered\n")

    pounds = float(input("Enter pounds>>> "))
    pence_input = float(input("Enter pence>>> "))

    pence = pence_input/100
    
    payment = pounds + pence
    print(payment)

    total_cost = cost1 + cost2
    print(total_cost)
    change = payment - total_cost
    if pence_input % 10 == 0:
        print("Change required is " + str(change) +"0")
    else:
        print("Chage required is " + str(change))


def start_1a():  
    while(1):
        try:
            cost1 = get_first_cost()
            cost2 = get_second_cost()
            money_tendered(cost1, cost2)
        except:
            print("Invalid input")

#start_1a()

"""
Additional exercise 2
"""

def append_zero(n):
    n = str(n)
    if len(n) == 1:
        n = "0" + n
    return n

def get_time():
    hours = float(input("Enter hours>>> "))
    str_hours = append_zero(int(hours))
    
    minutes = float(input("Enter minutes>>> "))
    str_minutes = append_zero(int(minutes))
    
    seconds = float(input("Enter seconds>>> "))
    str_seconds = append_zero(int(seconds))

    print("Input time is is %s:%s:%s\n" % (str_hours, str_minutes, str_seconds))

    total_seconds = hours*60*60 + minutes*60 + seconds
    return total_seconds

def get_time_difference(start, finish):
    if (finish > start):
        total = finish - start
    else:
        total = 86400 - (start - finish)
        
    print total
    hours = total/60/60
    minutes = total/60 % 60
    seconds = total % 60

    print("Difference in time is %d hours, %d minutes and %d seconds" % (hours, minutes, seconds))
    
  
while(1):
    print("Starting time")
    start = get_time()
    print("Finish time")
    finish = get_time()
    get_time_difference(start, finish)

    
