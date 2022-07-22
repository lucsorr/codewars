# https://www.codewars.com/kata/5970df092ef474680a0000c9

# PEDAC

# >Problem

  # Re-order the characters of a string, so that they are concatenated into a new string 
  # in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and 
  # punctuation shall simply be removed!

  # The input is restricted to contain no numerals and only words containing the english alphabet letters.

  # input: a string
  # output: a NEW string

  # all non alphabetical characters, including whitespaces, will be removed


# >Examples

  # alphabetized("The Holy Bible") == "BbeehHilloTy"

  # alphabetized("ZzCcBbAa !!!123454 ") == "AaBbCcZz"


# >Algorithm:

  # 1. INITIALIZE variable `chars_array` with an array containing ONLY alphabetical characters from `input_string`

  # 2. REMOVE all non alphabetical characters, including whitespaces from `chars_array`

  # 3. SORT the elements in `chars_array` by the downcase version of themselves:
  #   - if they are uppercase: sort them based on its downcase countepart
  #   - if they are downcase: sort them by their place in the ASCII table ("ASCIIbetical" order)

  # 4. JOIN all sorted elements in `chars_array` into a single string `sorted_string`

  # 5 RETURN `sorted_string`


# >Scratchpad:

  # sort 

  # sort downcase

  # map 

  # each

# Code: 

def alphabetized(input_string)
  chars_array = input_string.deleted("^A-Za-z").chars

  chars_array.sort! {|a, b| a.downcase <=> b.downcase }

  sorted_string = chars_array.join

  sorted_string
end

# Commentary: 
# This is the literal translation, step by step from the algorithm to code.
# This version is not the shortest possible version by far, as we can shorten
# it a lot more. For example, we could leverage method-chaining:

def alphabetized(input_string)
  chars_array = input_string.delete("^A-Za-z").chars

  chars_array.sort {|a, b| a.downcase <=> b.downcase }.join
end

# This version is half the size, but less readable: on line 66 we call the `delete` method
# on the `input_string` variable (refering to the string object we have passed as an argument
# to the `alphabetized` method) using a set of negative characters `"^A-z"`, which means the `delete`
# method will return a version of the string object without characters that are not between the
# 'A' and 'z' in the ASCII table, in other words, all non alphabetical characters. 
# Note we don't use the destructive version of the method (plus '!') because we don't want to 
# mutate the original caller string object.

# Over the `delete` method's return value (a new string without non-alphabetical characters)
# we call the `chars` method, which returns an array containing all characters in the caller
# string object without altering the caller, one element for each character in it. 
# So, we initialize the variable `chars_array` assigning it to this same array.

# On line 69 we call the `sort` method on the `chars_array` array object, with a code
# block (optional) that provides a way for the method to sort the elements in the array
# via the `<=>` comparison method (the sorting process is made thanks comparing elements):
# `sort` will pass two elements of the array to the block, one via assigning to its local variable
# `a`, and the second to `b`; then, we call the `downcase` method on the first element `a`(that returns
# a new downcase version of the caller string), in turn calling the `<=>`comparison method on its return
# value (the new downcased string), providing it as argument the downcase version of `b`, on which we 
# called the `downcase` method too. In this particular case, the `<=>` method will return `1`, and this
# , the code block's return value, will be used by `sort` to sort the elements in the array by 
# ascending ASCIIbetical order, because it will `know` now that it will have to put `a` before `b`.

# We call then the `join` method over `sort`'s return value, the new sorted array version of `chars_array`
# (we also didn't want to alter the caller using its destructive counterpart), which will return
# a string object composed by all elements in the caller array, all joined in a single string.

# As this line is the last line in the method, it will work as its return value, thus providing us
# with the desired ASCIIbetical ordered string without non-alphabetical characters.

# We could even have a shorter version of the method, but it wouldn't be very readable compared
# to the others:

def alphabetized(input_string)
  input_string.delete("^A-Za-z").chars.sort {|a, b| a.downcase <=> b.downcase }.join
end
