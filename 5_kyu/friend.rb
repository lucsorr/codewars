# https://www.codewars.com/kata/5547cc7dcad755e480000004/train/ruby

# >>>>>> Problem

# A friend of mine takes the sequence of all numbers from 1 to n (where n > 0).

# Within that sequence, he chooses two numbers, a and b.

# He says that the product of a and b should be equal to the sum of all numbers 
# in the sequence, excluding a and b.

# Given a number n, could you tell me the numbers he excluded from the sequence?

# input: an integer `n`

# output: an array of subarrays, each subarrays populated by two integers, `a` and `b`

# Solution formula:

# a * b == [1..n] - (a + b)

# where a and b are between 1 and n

# >>>>>> Caveats

# return empty output array if not possible to find a and b


# >>>>>> Examples and test cases

# removeNb(26) should return [[15, 21], [21, 15]]

# >>>>>> Data Structures + Possible methods/strategies to use

# init output array

# two nested loops for a and b (using counters)
#   counter a, counter b
#   next if a == b
#   if a * b == [1..n] - (a + b)
#     output_array << [a, b]

# >>>>>> Algorithm

# 1. init empty array `output_array`

# 2. set counter a to 0

# 3. LOOP for every integer in 1..n
#     - set counter b to 0

#       LOOP for every integer in 1..n
#         - init. a to input_array[counter a]
#         - init. b to input_array[counter b]
#         - if a * b == [1..n] - (a + b):
#           - output_array << [a, b]
#         - add 1 to counter b
#       END

#     - add 1 to counter a
#    END

# 4. return `output_array``


# >>>>>> Code

def removNb(n)
  output_array = []

  integers_list = [*(1..n)]
  integers_list_size = integers_list.size
  integers_sum = integers_list.sum

  counter_a = 0
  loop do
    counter_b = 0

    loop do
      a = integers_list[counter_a]
      b = integers_list[counter_b]
      
      output_array << [a, b] if a * b == integers_sum - (a + b)
      
      counter_b += 1
      break if counter_b == integers_list_size
    end
    
    counter_a += 1
    break if counter_a == integers_list_size
  end

  output_array
end

