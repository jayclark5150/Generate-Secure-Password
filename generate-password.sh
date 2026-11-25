#!/bin/zsh
# Prints a random 20 character password using the system random number generator.
# Character set: A-Z a-z 0-9 ! @ # % ^ & * _ + -
# To change the length, edit the number after "head -c".
# To change the characters, edit the set in quotes. Keep the "-" at the end so it is not read as a range.

LC_ALL=C tr -dc 'A-Za-z0-9!@#%^&*_+-' < /dev/urandom | head -c 20
