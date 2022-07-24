# https://www.codewars.com/kata/541c8630095125aba6000c00/train/

# >>> Problem

# Digital root

# Given n, take the sum of the digits of n. If that value has more 
# than one digit, continue reducing in this way until a single-digit 
# number is produced. 

# input: an Integer

# output: an Integer

# The input will be a non-negative integer.

# The definition. for Digital root is: the recursive sum of all the digits in a number.

# >>> Examples + cases

# 16  -->      1 + 6 = 7

# 942  -->     9 + 4 + 2 = 15  -->  1 + 5 = 6

# 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6

# 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

# >>> Algorithm

# 1. Get an array of all the digits in input number

# 2. Sum all the digits in the Array

# 3. Repeat steps 1 + 2 on the result of step 2 until the sum has only one digit

# 4. Return one digit sum

# >>> Code

def digital_root(input_number)
  return input_number if input_number.digits.size == 1

  digital_root(input_number.digits.sum)

end

# Commentary