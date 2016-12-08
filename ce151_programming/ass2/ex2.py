import sys
import random


def get_game_dict(word, lives):
    """
    Create and return a dictionary representing the game state
    word -- secret word to be guessed_word
    lives -- number of lives
    """
    stars = "*"*len(word)
    game_dict = {"secret_word": word, "guessed_word": stars, "lives": lives}
    return game_dict


def is_word_guessed(game_dict):
    """
    Check the game state to see if the guessed word matches the secret word and
    return the result
    game_dict -- dictionary containing game state
    """
    if game_dict["secret_word"] == game_dict["guessed_word"]:
        return True
    else:
        return False


def get_lives(game_dict):
    """
    Return number of lives left in a game state
    game_dict -- dictionary containing game state
    """
    return game_dict["lives"]


def get_info(game_dict):
    """
    Return a string describing the game state
    game_dict -- dictionary containing game state
    """
    return ("WORD: " + game_dict["guessed_word"] + "; you have " +
            str(get_lives(game_dict)) + " lives left")


def update(game_dict, guess):
    """
    Update the state of the game to reflect the guess of a user
    game_dict -- dictionary containing state of the game
    guess -- character guessed by user
    """
    occurences = 0
    i = 0
    for c in game_dict["secret_word"]:
        """
        Compare guess to every letter in the secret word
        """
        if guess == c:
            occurences = occurences + 1
            tmp = list(game_dict["guessed_word"])
            tmp[i] = guess
            game_dict["guessed_word"] = ''.join(tmp)
        i = i + 1
    if occurences == 0:
        game_dict["lives"] = game_dict["lives"] - 1
    return occurences


def play_game(word, lives):
    """
    Start playing an instance of the game
    word -- secret word to be guessed
    lives -- number of lives
    """
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

"""
Try to read words from a file
"""
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

"""
Prompt user for difficulty and run instance of a game. Repeat if user agrees
"""
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

    keep_playing = False
    while not keep_playing:
        play_again = input("Would you like to play again?>>> ").lower()
        if play_again == "yes":
            keep_playing = True
        elif play_again == "no":
            print("Goodbye")
            sys.exit(0)
        else:
            print("Invalid option, please try again")
