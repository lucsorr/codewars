# https://www.codewars.com/kata/51edd51599a189fe7f000015/train/ruby


# >>>>>> Problem

# Complete the function that

# - accepts two integer arrays of equal length
# - compares the value each member in one array to the corresponding member in the other
# - squares the absolute value difference between those two values
# - and returns the average of those squared absolute value difference between each member pair.

# input: two arrays of integers

# output: an integer, average of the squared absolute difference between each corresponding
#         pair of integers from each array


# >>>>>> Caveats


# >>>>>> Examples and test cases

# [1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
# [10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
# [-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

# >>>>>> Data Structures + Possible methods/strategies to use

# set variables: counter, sum

# sort both integers from each pair in order to know the absolute difference

# >>>>>> Algorithm

# 1. init. counter to 0

# 2. init. sum to 0

# 3. repeat n times where n is the size of both input arrays:
#     - store the two integers from both arrays in a sorted array
#     - calculate the absolute difference
#     - add the square of the difference to sum
#     - add 1 to counter

# 4. return result from dividing sum with the arrays size

# >>>>>> Code

def solution(array_1, array_2)
  size = array_1.size

  sum = 0

  i = 0
  while i < size
    sorted = [array_1[i], array_2[i]].sort

    sum += (sorted[1] - sorted[0])**2

    i += 1
  end

  sum / size.to_f
end
