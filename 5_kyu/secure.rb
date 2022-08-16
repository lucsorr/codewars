# https://www.codewars.com/kata/526dbd6c8c0eb53254000110/train/ruby

# >>>>>> Problem

# You have to validate if a user input string is alphanumeric.
# (I does not contain characters that are not letters or numbers)

# input: a string 

# output: a boolean


# >>>>>> Caveats

# The given string is not nil/null/NULL/None, so you don't have to check that.

# The string has the following conditions to be alphanumeric:

# At least one character ("" is not valid)

# Allowed characters are uppercase / lowercase latin letters and digits from 0 to 9

# No whitespaces / underscore

# >>>>>> Examples and test cases

# "hello123" valid

# "hello " invalid

# "hello_world" invalid

# >>>>>> Data Structures + Possible methods/strategies to use

# >>>>>> Algorithm

# 1. check if there is any character that is not a letter or number:
#     - if yes: return false
#     - else: return true

# >>>>>> Code

def alphanumeric?(string)
  return false if string.empty?

  !string.match?(/[^A-Za-z0-9]/)
end

p alphanumeric?("hello123")