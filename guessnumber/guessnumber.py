"""
This is merely a guessing number implementation.
It will let you trying to guess a number.
Problems
https://stackoverflow.com/questions/49346733/how-to-downgrade-vscode
"""
import random
import sys


def main():
    """
    Just the Entry point for the program. It will ramdomly determine a number
    and then will let the user 10 attempts to guess de number. The program will
    tell the user after every guess if it was lower or higher than the corrent
    number.
    """
    # Select a random number
    number = random.randint(1, 10000)
    pending_attempts = 10

    while pending_attempts > 0:
        retry = True
        while retry:
            retry = False
            try:
                mode = int(input('Input:'))
            except (ValueError, KeyboardInterrupt):
                print("Not a number")
                retry = True

        if mode > number:
            print("The number too big. ", end='')
        elif mode < number:
            print("The number too small. ", end='')
        else:
            print("You did it!")
            return

        pending_attempts -= 1
        if pending_attempts > 0:
            print("Pending attempts: {}".format(pending_attempts))
        else:
            print("No more attepts. It was {}".format(number))
        print("")


if __name__ == "__main__":
    main()
