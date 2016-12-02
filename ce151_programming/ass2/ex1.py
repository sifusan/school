import sys


def get_student_info(arg):
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
    student_info[2] = student_info_tmp.pop(0)
    student_info[4] = student_info_tmp.pop()[:-1]  # Use to skip newline chaar

    for name in student_info_tmp:
        cache = ""
        for i in range(len(name)):
            cache = cache + name[i]
        middle_name = middle_name + cache

    student_info[3] = middle_name[:-1]  # avoid uneeded  ' ' after

    result = tuple(student_info)
    return result


def print_student_info(*args):
    """
    Print student information in an orderly manner
    Note that names longer than a total of 32 characters will create an uneven
    table when printing many names in a row.
    args -- tuple containing student info, as processed by get_student_info()
    """
    spaces = 32 - len(args[0][3]) - len(args[0][4])
    print(
        args[0][4] + ', ' +
        args[0][3] + ' '*spaces +
        args[0][0] + ' ' +
        args[0][1] + ' ' +
        args[0][2])

list_of_students = []

try:
    filename = input("Enter filename>>>")
    f = open(filename)
    for line in f:
        list_of_students.append(get_student_info(line))
    f.close()
except (FileNotFoundError, IOError) as e:
        print("Somehting went wrong" +
              "file could not be opened or does not exist")

print()
for s in list_of_students:
    print_student_info(s)
