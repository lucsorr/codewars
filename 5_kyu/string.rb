# https://www.codewars.com/kata/54a91a4883a7de5d7800009c

# >>>>>> Problem

# Your job is to write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.

# input: a string

# output: a new string


# >>>>>> Caveats

# Attention: If the number has leading zeros the amount of digits should be considered.

# should I be aware of digit characters not at the end of input string in some cases? 
# YES

# should I be aware of digits only input strings?

# >>>>>> Examples and test cases

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# >>>>>> Data Structures + Possible methods/strategies to use

# format

# split

# partition

# join

# >>>>>> Algorithm

# 1. copy input string into a new variable with dup ?

# 2. extract digit characters into a new string `digits`

# 3. check if `digits` size is empty
#     - if yes: - append `1` character at the end of copy of input string
#               - return that copy
#     - if no:  (- check if there are leading zeros in the string:)
#                 (- if yes: - store number of zeros in a variable `number of zeros`)
#                 (- if no:)  - convert digits into an Integer
#                             - increment that integer by one
#                             - convert that integer into a string `integer_string`

# 4. append integer_string to copy of input string

# 5. return copy of i. string


# >>>>>> Code

def increment_string(input_string)

  if input_string.empty? || input_string[-1].match?(/[A-Za-z]/)
    return input_string + "1"
  else
    last_digits = ""

    counter = - 1
    loop do 
      break if counter.abs > input_string.size

      input_string[counter].match?(/[0-9]/) ? last_digits << input_string[counter] : break

      counter -= 1
    end

    letters = input_string[0..counter]
    integer = last_digits.reverse.to_i

    letters << format("%0#{last_digits.size}d", integer + 1)
  end
end
