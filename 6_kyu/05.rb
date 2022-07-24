# https://www.codewars.com/kata/58f5c63f1e26ecda7e000029

# Intro

# The wave (known as the Mexican wave in the English-speaking world outside North America) 
# is an example of metachronal rhythm achieved in a packed stadium when successive groups 
# of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to 
# full height, the spectator returns to the usual seated position.

# The result is a wave of standing spectators that travels through the crowd, even though 
# individual spectators never move away from their seats. In many large arenas the crowd 
# is seated in a contiguous circuit all the way around the sport field, and so the wave 
# is able to travel continuously around the arena; in discontiguous seating arrangements, 
# the wave can instead reflect back and forth through the crowd. When the gap in seating 
# is narrow, the wave can sometimes pass through it. Usually only one wave crest will be 
# present at any given time in an arena, although simultaneous, counter-rotating waves 
# have been produced. 

# >>>> Problem

# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. 
# You will be passed a string and you must return that string in an array where an uppercase letter 
# is a person standing up. 

# ! input: a string

# ! output: an array of string objects, each one representing one stage of the wave

# Rules:

# ! 1 letter represents 1 person

# ! when 1 person is standing, all the rest are seated

# ! The input string will always be lower case but maybe empty.

# ! If the character in the string is whitespace then pass over it as if it was an empty seat

# ! the size of the output array is equal to the number of letters in input strings


# the persons will stand in order, one at a time, from the begginning to the end of the string.

# each element in the output array will be like a picture of the wave in each stage.


# >>>> Examples and test cases

# wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# wave("lu cas") == ["Lu cas", "lU cas", "lu Cas", "lu cAs", "lu caS"]

# wave("") == [""]


# >>>> Algorithm

# 1. INITIALIZE variable `output_array` ASSIGNING it to literal empty array object `[]`

# 2. if the input string is empty, return `output_array`

# 3. for each character in string:
#     unless the character is a whitespace:
  #     a. convert character to uppercase
  #     b. store string in output_array
  #     c. convert back the character into downcase

# 4. RETURN `output_array`


def wave(input_string)
  output_array = []

  return output_array if input_string.empty?

  input_string.chars.each_with_index do |character, index|
    unless character == " "
      string_buffer = input_string.dup

      string_buffer[index] = character.upcase
      
      output_array << string_buffer
    end
  end

  output_array
end

# Commentary

