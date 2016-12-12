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
"""
Read string of student info from a file
"""
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


def print_sorted_by_name(students):
    """
    Print a list of student in alphabetical order based on name
    student -- list of students to print from
    """

    students.sort()
    for s in students:
        print_student_info(s)

    """
    i = 97
    while i < 127:
        for s in students:
            if ord(s[4][0].lower()) == i:
                sorted_by_last_name.append
        i = i + 1
    """


def print_student_names(students):
    """
    Print last name and first name(s) of students
    students -- list of students to print from
    """
    for s in students:
            print(s[3] + ' ' + s[4])


def get_students_by_regnr(students, regnr):
    """
    Return students with matching regnr
    students -- list of students to search
    regnr -- registration number
    """
    found = []
    for s in students:
        if int(s[0]) == regnr:
            found.append(s)
    if len(found) == 0:
        print("No results found")
    return found


def get_students_by_year_range(students, upper, lower):
    """
    Return a list of students within a given year range
    students -- students to search
    upper -- upper year range
    lower -- lower year range
    """
    found = []
    for s in students:
        if int(s[1]) in range(lower, upper+1):
            found.append(s)
    if len(found) == 0:
        print("No results found")
    return found


def get_students_by_scheme(students, scheme):
    """
    Return a list of students with a given degree scheme
    students -- students to search
    scheme -- degree scheme
    """
    found = []
    for s in students:
        if s[2] == scheme:
            found.append(s)
    if len(found) == 0:
        print("No results found")
    return found

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
            print()
            print_student_names(
                get_students_by_regnr(list_of_students, user_input))
        elif user_input == 2:
            lower_year = int(input("Enter lower year range>>> "))
            higher_year = int(input("Enter higher year range>>> "))
            print()
            print_sorted_by_name(
                get_students_by_year_range(
                    list_of_students, higher_year, lower_year))

        elif user_input == 3:
            user_input = input("Enter a degree scheme>>> ").upper()
            print()
            print_sorted_by_name(get_students_by_scheme(
                list_of_students, user_input))

        elif user_input == 0:
            print("Good bye")
            sys.exit(0)
        else:
            print()
            print("Invalid number, try one from the listed commands")
    except ValueError:
        print("Invalid input, please try again")
