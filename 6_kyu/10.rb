# https://www.codewars.com/kata/54da5a58ea159efa38000836/train/ruby

# >>> Problem

# Given an array of integers, find the one that appears an odd number of times.

# input: an array of integers

# output: an integer (the one that appears an odd number of times)

# There will always be only one integer that appears an odd number of times.
# (the result can't be nil)

# >>> Examples

# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

# >>> Algorithm

# 1. for every integer in input array of integers:
#     - count integer occurrences in input array
#     - if the count result is an odd number: return integer

# >>> Code

def find_it(integers_array)
  integers_array.select do |integer|
    integers_array.count(integer).odd?
  end[0]
end

# Commentary

