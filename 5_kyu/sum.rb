# https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/ruby

# >>>>>> Problem

# The maximum sum subarray problem consists in finding the maximum sum 
# of a contiguous subsequence in an array or list of integers

# input: an array of integers

# output: an integer (the maximum sum of a contiguous subsequence in the array)


# >>>>>> Caveats

# If the list is made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. 

# Note that the empty list or array is also a valid sublist/subarray.

# >>>>>> Examples and test cases

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] -- should be 6: [4, -1, 2, 1]

# max_sequence [-1, 2, 3, -5] == 5

# >>>>>> Data Structures + Possible methods to use

# all?
# < 0

# >>>>>> Algorithm

# 1. return 0 if list empty or with only negative numbers

# 2. init. max_sum variable to 0

# 3. for each element in the array
#     - for each element in the array from current element to the end:
#         - if value is greater than max_sum: reset max_sum
#         - sum current value + next element:  if value is greater than max_sum: reset max_sum
#         - continue adding values + next element until reaching the last element and performing the same chech for each sum

# 4. return max_sum

# >>>>>> Code

def max_sequence(array)
  return 0 if array.empty? || array.all? { |element| element <= 0 }

  max_sum = 0

  array.each_with_index do |element, index|
    counter = 1
    loop do
      break if counter > array.size - index

      sum = array[index, counter].sum
      max_sum = sum if sum > max_sum
      
      counter += 1
    end
  end

  max_sum
end
