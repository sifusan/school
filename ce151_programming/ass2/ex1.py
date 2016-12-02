

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
    student_info[4] = student_info_tmp.pop()

    print(student_info_tmp)

    for name in student_info_tmp:
        cache = ""
        for i in range(len(name)):
            cache = cache + name[i]
        middle_name = middle_name + cache

    student_info[3] = middle_name[:-1]

    result = list(student_info)
    print(result)
    return result


def print_employee_info(*args):
    print(
        args[0][4] + ' ' +
        args[0][3] + '\t' +
        str(args[0][0]) + ' ' +
        str(args[0][1]) + ' ' +
        args[0][2])


get_student_info("123456 2 G400 Bartholomew Homer Simpson")
"""
try:
    filename = input("Enter filename>>>")
    student_file = open(filename)
except (FileNotFoundError, IOError) as e:
    print("Somehting went wrong")
"""
