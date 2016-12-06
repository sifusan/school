import sys
import os


def create_student_tuple(arg):
    """
    Return a tuple with student information

    Keyword arguments:
    arg -- string containing the student information
    """

    student_info_tmp = []
    cache = ""

    for i in range(len(arg)):
        cache = cache + arg[i]
        if arg[i] == ' ' or i == len(arg) - 1:
            student_info_tmp.append(cache)
            cache = ""
    student_info = [0, 0, 0, 0, 0]

    middle_name = ""

    student_info[0] = student_info_tmp.pop(0)
    student_info[1] = student_info_tmp.pop(0)
    student_info[2] = student_info_tmp.pop(0)[:-1]
    student_info[4] = student_info_tmp.pop()[:-1]

    for name in student_info_tmp:
        cache = ""
        for i in range(len(name)):
            cache = cache + name[i]
        middle_name = middle_name + cache

    student_info[3] = middle_name[:-1]

    result = tuple(student_info)
    return result


def print_student_info(*args):
    """
    Print student information in an orderly manner
    Note that names longer than a total of 32 characters will create an uneven
    table when printing many names in a row.
    args -- tuple containing student info, as processed by get_student_info()
    """
    name_spaces = 32 - len(args[0][3]) - len(args[0][4])
    print(
        args[0][4] + ', ' +
        args[0][3] + ' '*name_spaces +
        args[0][0] + ' ' +
        args[0][1] + ' ' +
        args[0][2])

list_of_students = []

try:
    filename = input("Enter filename>>>")
    f = open(filename)
    for line in f:
        list_of_students.append(create_student_tuple(line))
    f.close()
except (FileNotFoundError, IOError) as e:
        print("Somehting went wrong, " +
              "file could not be opened or does not exist")
        print("Aborting...")
        sys.exit(1)

print()
for s in list_of_students:
    print_student_info(s)


def clear_console():
    """
    Clear up the console
    """
    if sys.platform == "linux":
        os.system("clear")
    elif sys.platform == "windows":
        os.system("cls")


def print_sorted_by_name(students):
    """
    Print a list of student in alphabetical order based on name
    student -- list of students to print from
    """
    i = 97  # use int value of chars
    while i < 127:
        for s in students:
            if ord(s[4][0].lower()) == i:
                print_student_info(s)
        i = i + 1


def get_student(reg_number=0, year=0, scheme=0):
    """
    Pirint any number of tuples containing information about a student based on
    search criteria.
    reg_number -- registration number of student
    year -- which year student is in
    scheme -- which scheme student is taking
    """
    found = []
    if scheme == 0:
        for s in list_of_students:
            if int(s[0]) == reg_number or int(s[1]) == year:
                print_student_info(s)
                found.append(s)
    else:
        for s in list_of_students:
            if s[2] == scheme:
                found.append(s)
        print_sorted_by_name(found)

    if len(found) == 0:
        print("No results given, try to change search parameters")

while True:
    print()
    print("Enter one of the following commands:")
    print("1: Show students by registration number")
    print("2: Show students by year range")
    print("3: Show students by degree scheme")
    print("0: Exit Program")

    try:
        user_input = int(input(">>>  "))

        if user_input == 1:
            user_input = int(input("Enter a registration number>>> "))
            clear_console()
            get_student(user_input, 0, 0)
        elif user_input == 2:
            lower_year = int(input("Enter lower year range>>> "))
            higher_year = int(input("Enter higher year range>>> "))
            clear_console()
            for i in range(lower_year, higher_year+1):
                get_student(0, i, 0)
        elif user_input == 3:
            user_input = input("Enter a degree scheme>>> ").upper()
            clear_console()
            get_student(0, 0, user_input)

        elif user_input == 0:
            print("Good bye")
            sys.exit(0)
        else:
            clear_console()
            print("Invalid number, try one from the listed commands")
    except ValueError:
        print("Invalid input, please try again")
