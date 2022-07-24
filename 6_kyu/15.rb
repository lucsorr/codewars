# https://www.codewars.com/kata/525f50e3b73515a6db000b83

# >>> Problem

# Write a function that accepts an array of 10 integers 
# (between 0 and 9), that returns a string of those numbers 
# in the form of a phone number.

# input: an array of 10 integers

# output: a string

# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parentheses!

# >>> Examples

# create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"

# >>> Code

def create_phone_number(integers_array)
  format("(%03d) %03d-%04d", 
  integers_array[0..2].join.to_i, 
  integers_array[3..5].join.to_i, 
  integers_array[6..-1].join.to_i)
end
