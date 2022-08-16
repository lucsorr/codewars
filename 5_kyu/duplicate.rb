# https://www.codewars.com/kata/5868b2de442e3fb2bb000119/train/ruby


# >>>>>> Problem

# Task:

# For each number in input 
# - string calculate its "weight" and 
# - then find two numbers of string that have:

# - the smallest difference of weights ie that are the closest
# - with the smallest weights
# - and with the smallest indices (or ranks, numbered from 0) in strng

# input: a string of numbers

# output: an array of two sub arrays, each containing:
#         - number weight
#         - index of number in input String
#         - the number itself (integer form)

# >>>>>> Caveats

# convert string into an array of integers

# The two subarrays are sorted in ascending order by their number weights 
# if these weights are different, by their indexes in the string if they 
# have the same weights.

# >>>>>> Examples and test cases

# strng = "103 123 4444 99 2000"
# should return [[2, 4, 2000], [4, 0, 103]]

# because 2000 and 103 have for weight 2 and 4, their indexes in strng are 4 and 0.
# The smallest difference is 2.
# 4 (for 103) and 6 (for 123) have a difference of 2 too but they are not 
# the smallest ones with a difference of 2 between their weights.

# >>>>>> Data Structures + Possible methods/strategies to use

# sort by the sum of weight and index in subarrays

# sort by the difference of weights

# >>>>>> Algorithm

# 1. convert input string into an array of integers

# 2. init. empty output array

# 3. for every integer of array of integers:
#     - init empty subarray
#     - store in subarray:
#       - number weight (sum of its digits)
#       - index of number in array of integers
#       - the number itself
#     - store subarray in output array

# 5. sort output array by the difference of weights

# 4. sort output array by the sum of weights and indeces (elements 0 and 1 index pos. of each subarrays)

# 6. output two first arrays in output array, sorted.

# >>>>>> Code

def closest(string)
  integers_array = string.split.map { |integer| integer.to_i }

  output_array = []

  integers_array.each_with_index do |integer, index|
    output_array << [integer.digits.sum, index, integer]
  end

  # Sort by difference of weights
  output_array.sort! do |subarray_a, subarray_b|
    sorted = [subarray_a, subarray_b]
    sorted.max - sorted.min <=> sorted.min - sorted.max
  end.
  
  min_by(2) { |subarray| subarray[0] + subarray[1] }.sort

  # b
  
  # # # Sort by smallest indices
  # return_array = output_array.min_by(2) { |subarray| subarray[1] }

  # return_array = output_array.min_by(2) { |subarray| subarray[0] }
  
  
  # # Sort by smallest weights
  # output_array.sort_by! { |subarray| subarray[0] }
  
end

p closest("103 123 4444 99 2000")
# p closest("80 71 62 53")
# p closest("444 2000 445 544")
# p closest("444 2000 445 644 2001 1002")