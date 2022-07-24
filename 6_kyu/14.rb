https://www.codewars.com/kata/526571aae218b8ee490006f4/train/ruby

>>> Problem

Write a function that takes an integer as input, and returns the number of 
bits that are equal to one in the binary representation of that number. 

You can guarantee that input is non-negative.

input: an integer

output: an integer (count how many 1s are in the binary representation of input integer)

>>> Examples

count_bits(1234) == 5 # 5 1s in 10011010010

>>> Algorithm

1. convert input integer to binary

2. count number of 1s in binary number equivalent of input integer

3. return count result


>>> Code

def count_bits(input_integer)
  input_integer.digits(2).count(1)
end
