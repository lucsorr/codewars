# https://www.codewars.com/kata/554ca54ffa7d91b236000023

# Task

# Given a list and a number, create a new list that contains each number of list
# at most N times, without reordering.

# For example if the input number is 2, and the input list is [1,2,3,1,2,1,2,3], 
# you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 
# being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].
# With list [20,37,20,21] and number 1, the result would be [20,37,21].

# PEDAC

# # Problem:

# input: an array of integers, an integer `n`
# output: a NEW array of integers 

# n is the number of max. times a certain element(an integer) can occur at the array

# the task is to output an array with the same integers of the input array but with
# integer removed that repeat more than n times, while keeping the same order


# # Examples:

# delete_nth([1,2,3,1,2,1,2,3], 2) == [1, 2, 3, 1, 2, 3]

# delete_nth([20,37,20,21], 1) == [20,37,21]

# case emtpy array ?? // single element array ??

# case

# Algorithm

# 1. INITIALIZE empty array = `output_array`

# 2. LOOP for each integer in `input array`:
#     a. Copy integer into `output_array`

#     b. Count how many times `integer` occurs in `output_array`:
#       - if `times` > `n` (where n is the second argument, the max. number of possible occurences):
#         REMOVE `integer` from `output_array`
#       - else: 
#         NEXT iteration

# 3. RETURN `output_array`

def delete_nth(input_array, n)

  input_array.each_with_object([]) do |integer, output_array|
    output_array << integer
    output_array.pop if output_array.count(integer) > n
  end

end

p delete_nth([1,2,3,1,2,1,2,3], 2) == [1, 2, 3, 1, 2, 3]
