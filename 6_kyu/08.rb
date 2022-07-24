# https://www.codewars.com/kata/546f922b54af40e1e90001da

# >>> Problem:

# Given a string, replace every letter with its position in the alphabet.

# input: a string

# output: a string composed only by integer characters and whitespaces

# each integer represents the position of the character's letter in the alphabet 

# one character == one integer unless the character is not a letter

# >>> Examples:

# alphabet_position("a b c") == "1 2 3"

# alphabet_position("The sunset sets at twelve o' clock.") == 
# "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

# >>> Algorithm:

# 1. for every character in the input string:

#     - skip to next character if the character is not a letter

#     - convert the character to its integer equivalent in the ASCII table (downcase)

#     - substract the value of 'a' ?? in the ascii table to that same integer

#     - convert that integer to its string character equivalent

#     - append integer to output string

# 2. Return string

A_ASCII_VALUE = 97

def alphabet_position(input_string)
  input_string.chars.each_with_object("") do |character, output_string|
    if character.match?(/[A-Za-z]/)
      output_string << (character.downcase.ord - (A_ASCII_VALUE - 1)).to_s + " "
    end
  end.strip
end

# Commentary:

