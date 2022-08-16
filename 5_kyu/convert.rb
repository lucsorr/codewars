# https://www.codewars.com/kata/529b418d533b76924600085d/train/ruby


# >>>>>> Problem

# Complete the function/method so that it takes a PascalCase string 
# and returns the string in snake_case notation. 

# input: a string (camel case or numbers)

# output: a new string (input string converted to snake case)


# >>>>>> Caveats

# Lowercase characters can be numbers. 
# If the method gets a number as input, it should return a string.

# >>>>>> Examples and test cases

# "TestController"  -->  "test_controller"
# "MoviesAndBooks"  -->  "movies_and_books"
# "App7Test"        -->  "app7_test"
# 1                 -->  "1"

# >>>>>> Data Structures + Possible methods/strategies to use

# reversed each

# array of characters from input string

# output_string << each character to_s + downcase

# if current char. is upcase? insert an extra "_"

# >>>>>> Algorithm

# 1. init array to characters from input string, or digits if a number

# 2. for every character in the array of characters, starting from the last:
#     - convert character into a string if not already one (a number as input),
#       and convert to downcase equivalent if not already one
#     - prepend character to output string
#     - if the character from original input string was upcase,
#       - prepend "_" too
    
# 3. return output_string

# >>>>>> Code

def to_underscore(string)
  characters_array = string.is_a?(String) ? string.chars : string.digits.reverse

  output_string = []
  first_character_index = string.size - 1

  characters_array.reverse.each_with_index do |character, index|
    character = character.to_s

    output_string.unshift(character.downcase)

    if character.match?(/[A-Z]/) && index != first_character_index
      output_string.unshift("_") 
    end
  end

  output_string.join
end