# https://www.codewars.com/kata/530e15517bc88ac656000716/train/ruby

# >>>>>> Problem

# ROT13 is a simple letter substitution cipher that replaces a letter with 
# the letter 13 letters after it in the alphabet. 
# ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13. 
# If there are numbers or special characters included in the string, they should 
# be returned as they are. 

# input: a string

# output: a string


# >>>>>> Caveats

# Only letters from the latin/english alphabet should be 
# shifted, like in the original Rot13 "implementation".

# >>>>>> Examples and test cases

# rot13("ABC") == "NOP"

# >>>>>> Algorithm

# 1. init. empty output string

# 2. For each character in input string:
#     - if it is a letter:
#         - get letter ASCII number
#         - sum 13 to letter ASCII number, modulus op. number of letters in alphabet
#         - convert ASCII number to letter equivalent
#         - add letter to output string
#     - else:
#         - add character to output string

# 3. return output string


# >>>>>> Code

ROTATION = 13

ALPHABET_LETTERS = 26

A_UPCASE_VALUE = 65

A_DOWNCASE_VALUE = 97

def rot13(input_string)
  input_string.chars.each_with_object('') do |character, output_string|
    if character.match?(/[A-Za-z]/)
      a_value = character.match?(/[A-Z]/) ? A_UPCASE_VALUE : A_DOWNCASE_VALUE

      rotated_character = (((character.ord - a_value + ROTATION) %
                          ALPHABET_LETTERS) +
                          a_value).chr

      output_string << rotated_character
    else
      output_string << character
    end
  end
end
