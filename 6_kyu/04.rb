# https://www.codewars.com/kata/5ae326342f8cbc72220000d2


# >>>>> Problem

# Given a string that includes alphanumeric characters ('3a4B2d') return the 
# expansion of that string:

# The first occurrence of a numeric value should be the number of times each 
# character behind it is repeated, until the next numeric value appears.

# input: a string with integers and letters

# output: a string with only letters

# The numeric values represent the occurrence of each 
# letter preceding that numeric value. 

# There should be no numeric characters in the final string. 

# Empty strings should return an empty string.

# If there are two consecutive numeric characters the first one is ignored.

# Your code should be able to work for both lower and capital case letters.


# >>>>> Examples and test cases:

# string_expansion('3D2a5d2f') == 'DDDaadddddff'

# string_expansion('3abc') == 'aaabbbccc'      
# string_expansion('3abc') != 'aaabc'          
# string_expansion('3abc') != 'abcabcabc'   

# string_expansion('3d332f2a') == 'dddffaa'

# >>>> Algorithm:

# 1. Initialize variable `output_string` assigning it to a empty string object ""

# 2. initialize variable `repetitions` assigning it to integer 0

# 3. For every character in `input_string`:
#     - if it is an integer character:
#       - convert it into an integer if it is not a letter
#       - assign the integer to the `repetitions` variable
#     - if it is a letter: 
#       - append the letter `repetition` number of times to `output_string`

# 4. Return `output_array`

def string_expansion(input_string)

  repetitions = 1
  
  input_string.chars.each_with_object("") do |character, output_string|
    if character.to_i.to_s == character
      repetitions = character.to_i
    else
      binding.irb
      output_string << character * repetitions
    end
  end

end


# Commentary:

# between lines 53 and 66 we declare the `string_expansion` method's definition using the `def` keyword, also defining
# its method argument named `input_string`, wich will be used to reference the string object that we will pass
# to the method when we call it later. 

# First, on line 55 we initialize the `repetitions` variable assigning it to the `Integer` object 1, which we will use
# to set how many times we will copy a letter to the output string object. Note we are not assignint to 0: see the line
# 61; if it was 0, the character will be copied 0 times (multiplied by 0), and we would end up with an empty string, 
# as none of the character would be copied.

# The method's core is at the lines 57-62: We call the `chars` method on `input_string`, and then, using 'method chaining',
# we call `each_with_object` (plus providing its calling with a code block) on `chars`' return value. Let's analyze what
# those methods do:

# `chars` returns an array of characters, the characters the string object on which we call it is made of, including 
# whitespaces. In this case, the return value from `chars` will be an array in which each element corresponds to each
# character in `input_string`, integers and/or letters.

# `each_with_object` is an interesting method: it works the same as `each`, passing each element, one at a time, of the collection
# object on which we call it and not caring about the block's return value (`each` just returns the same original unmodified
# collection object), but with one difference, to `each_with_object` we pass an object as argument, an empty string 
# literal `""`, that in turn we will pass to the block as well, along with each element, via the corresponding local variables 
# to which we will bind them (thus the both parameters in line 57, `character`, `output_string`)

# inside `each_with_object`'s block(lines 58-62), we have two conditional branches, the first, `if`, will check if the character
# that's been passed to the block by `each_with_object` is an integer. We accomplish this by converting it to an integer via
# the `to_i` (that returns the Integer object equivalent to the string integer character on which we called it) and then, over
# `to_i`'s return value (the integer equivalent), we call `to_s`, wich will turn it again into its string character representation.
# Then we compare the result by calling the `==` comparison method over it (that returns a boolean, true if both objects have the same
# content), and using the original string character as argument. The thing to remember is that, when we call `to_i` on a letter character,
# it returns the integer 0, but if the character on which we call it is an integer's character, it returns its integer object equivalent.

# the second conditional branch `else` is executed if the character is a letter (we will only have alphanumerical characters strings as 
# inputs): we call the `*` method on the character and provide the integer `repetitions` as argument, wich will return a new string object
# (the object on which we call `*` was a string object) composed of its same content (the `character` letter) but multiplied by the integer
# provided as argument `repetitions`. I.e: if `repetitons` is 3 and `character` is "D", `*` will return "DDD".
# Then, we use that string object we got returned from `*` as an argument to pass to the `<<` method called on the `output_array`, which is
# referencing the object we passed to `each_with_object`. `<<` will append permanently (mutating its caller, the `output_array` collection 
# object in this case) the string object we got from `*`. Following the previous example, `output_array` == "DDD". 

# This process will happen one time for each one of the elements in `input_string`.chars array, on which we called the `each_with_object` method.
# When it's finished, our `each_with_object` friend will return, not the original caller, but the object passed as an argument to it, the
# empty string literal "", this time filled up with the corresponding characters multiplied by the corresponding number of times. And finally, this
# being the method's definition last line it is executed, this object returned from `each_with_object` will become the method's return value.

