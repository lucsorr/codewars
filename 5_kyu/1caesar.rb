# https://www.codewars.com/kata/5508249a98b3234f420000fb/train/ruby

# >>>>>> Problem

# The function "movingShift" first codes the entire string and
# then returns an array of strings containing the coded string in 5 parts

# the problem has three parts and two methods:

# movingShift: rotation part
#              dividing part

# demovingShift: rotation part


# input: parameter s: a string
#        parameter shift: an integer, the initial value for the rotation

# output: an array of five strings (the rotated string divided in 5 parts)


# >>>>>> Caveats

# This program performs a variation of the Caesar shift. 
# The shift increases by 1 for each character (on each iteration).

# If the shift is initially 1, the first character of the message 
# to be encoded will be shifted by 1, the second character will be shifted by 2, etc...


# >>>>>> Examples and test cases

# u = "I should have known that you would have a perfect answer for me!!!"

# movingShift(u, 1) returns :

# v = ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv", " lvz wp!!!"]

# >>>>>> Data Structures + Possible methods/strategies to use

# array of u characters

# custom character rotator

# >>>>>> Algorithm

# (( movingShift

# > store all characters from u in an array

# > init. empty output_string

# > init. counter to parameter shift (initial shift)

# > for each character in characters array:
#   - rotate character by counter (custom rotator)
#   - add character to output_string
#   - add 1 to character
# ))

# (( demovingShift(array, shift)
#     - join input array elements in a single string
#     - derotate character by shift
#     - add character to output_string
#     - add 1 to shift
  
# ((
# custom rotator(character, shift)
#   - if character is a letter:
#     - convert character to ascii code
#     - substract value of (A or a) to character
#     - add shift to character
#     - perform modulo operation on character with 26 (number of letters in alphabet)
#     - add value of (A or a) to character
#     - convert character back to string character equivalent
#     - return character
#   - else
#     - return character
# ))

# (( string splitter
#     - init part_size to division of size of the input string by 5.0 and round up
#     - init empty output array
#     - init counter to 0
#     - LOOP until counter is larger than size of input string
#         - store part_size number of characters of input string from counter index position in output array as an array
#         - add part_size to counter

# ))

# >>>>>> Code

ALPHABET_LETTERS = 26
PARTS = 5

def caesar_rotator(character, shift, derotator=false)
  if character.match?(/[A-Za-z]/)
    a_value = character.match?(/[A-Z]/) ? 'A'.ord : 'a'.ord

    character = character.ord - a_value
    character = (derotator ? character - shift : character + shift) % ALPHABET_LETTERS
    character += a_value

    character.chr
  else
    character
  end
end

def movingShift(s, shift)
  output_string = ''

  s.chars.each do |character|
    output_string << caesar_rotator(character, shift)

    shift += 1
  end

  string_splitter(output_string)
end

def string_splitter(string)
  part_size = (string.size / PARTS.to_f).ceil
  output_array = []

  counter = 0
  PARTS.times do
    output_array << string.slice(counter, part_size)

    counter += part_size
  end

  output_array
end

def demovingShift(array, shift)
  array.join.chars.each_with_object('') do |character, output_string|
    output_string << caesar_rotator(character, shift, true)

    shift += 1
  end
end

