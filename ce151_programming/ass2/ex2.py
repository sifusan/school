import sys
import random


def get_game_dict(word, lives):
    stars = "*"*len(word)
    d = {"secret_word": word, "guessed_word": stars, "lives": lives}
    return d


def is_word_guessed(game_dict):
    if game_dict["secret_word"] == game_dict["guessed_word"]:
        return True
    else:
        return False


def get_lives(game_dict):
    return game_dict["lives"]


def get_info(game_dict):
    return ("WORD: " + game_dict["guessed_word"] + "; you have " +
            str(get_lives(game_dict)) + " lives left")


def update(game_dict, guess):
    if len(guess) > 1:
        print("Too many characters in guess")
        return
    occurences = 0
    for g in guess:
        i = 0
        for c in game_dict["secret_word"]:
            if g == c:
                occurences = occurences + 1
                tmp = list(game_dict["guessed_word"])
                tmp[i] = g
                game_dict["guessed_word"] = ''.join(tmp)
            i = i + 1
    if occurences == 0:
        game_dict["lives"] = game_dict["lives"] - 1
    return occurences


def play_game(word, lives):
    game = get_game_dict(word, lives)
    while get_lives(game) > 0 and not is_word_guessed(game):
        print(get_info(game))
        guess = input("Guess a letter>>> ").upper()
        if len(guess) > 1:
            print("Entered too many characters, try again")
            continue
        print("The letter " + guess + " occures " + str(update(game, guess)) +
              " times")

    if get_lives(game) <= 0:
        print("You've spent all your lives, game over :-(")
        print("The word was " + game["secret_word"])
    elif is_word_guessed:
        print("The word is " + game["secret_word"])
        print("You did it! Congratulations")

try:
    filename = input("Enter filename>>> ")
    f = open(filename)
    list_of_strings = []
    for line in f:
        list_of_strings.append(line[:-1])
    f.close()
except(FileNotFoundError, IOError) as e:
    print("Something went wrong, " +
          "file could not be read or does not exist")
    print("Aborting...")
    sys.exit(1)

print("Welcome to hangman!")
while 1:
    user_diff = input("Which difficulty would you like to play?>>> ").lower()
    difficulty = 0
    if user_diff == "hard":
        difficulty = 5
    elif user_diff == "intermediate":
        difficulty = 7
    elif user_diff == "easy":
        difficulty = 10
    else:
        print("Invalid difficulty, try to enter \'easy\'," +
              "\'intermediate\' or '\hard\'")
        continue

    play_game(list_of_strings[random.randint(0, len(list_of_strings) - 1)],
              difficulty)

    choice = False
    while not choice:
        play_again = input("Would you like to play again?>>> ").lower()
        if play_again == "yes":
            choice = True
        elif play_again == "no":
            print("Goodbye")
            choice = True
        else:
            print("Invalid option, please try again")
