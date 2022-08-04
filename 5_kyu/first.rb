# https://www.codewars.com/kata/52bc74d4ac05d0945d00054e/train/ruby

# >>>>>> Problem

# Write a function named first_non_repeating_letter that takes a string input, 
# and returns the first character that is not repeated anywhere in the string.

# input: a string

# output: a one character string (first non repeated character)


# >>>>>> Caveats

# As an added challenge, upper- and lowercase letters are considered the same character, 
# but the function should return the correct case for the initial letter. 
# For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.


# >>>>>> Examples and test cases

# For example, if given the input 'stress', the function should return 't', 
# since the letter t only occurs once in the string, and occurs first in the string.

# >>>>>> Data Structures + Possible methods/strategies to use

# convert string into array of characters

# count == 1

# each

# downcase


# >>>>>> Algorithm

# 1. init, empty 'output string'

# 2. for each character in string:
#     - count downcase character version occurrences in downcase version of input string
#     - if count == 1:
#         - append original character to output string
#         - return output string

# 3. return output string

# >>>>>> Code


def first_non_repeating_character(string)
  string.chars.each_with_object("") do |character, output_string|
    return output_string << character if string.downcase.count(character.downcase) == 1
  end
end
