# https://www.codewars.com/kata/55e7280b40e1c4a06d0000aa

# >>>>>> Problem

# What is the sum of an array with `k` number of integers, where those integers
#     are the integers from an array of integers `list`, as close as possible,
#     or equal but not greater, than a limit provided `limit`?


# input: three paramenters, an integer `limit`, 
#                           an integer `k`, 
#                           an array `list`

# output: an integer (sum of the array with `k` number of elements), equal or smaller than `limit`
#         or nil if not possible (all possible arrays with `k` number of elements sum more than `limit`)

# >>>>>> Caveats

# do not mutate the list

# k will be always >= 1

# every list will have at least one element

# >>>>>> Examples and test cases

# ls = [50, 55, 57, 58, 60]

# With list ls and 3 towns to visit they can make a choice between: 

# [50,55,57],[50,55,58],[50,55,60],
# [50,57,58],[50,57,60],[50,58,60],
# [55,57,58],[55,57,60],[55,58,60],
# [57,58,60].

# The sums of distances are then: 
# 162, 163, 165, 
# 165, 167, 168, 
# 170, 172, 173, 
# 175.

# The biggest possible sum taking a limit of 174 into account 
# is then 173 and the distances of the 3 corresponding towns is 
# [55, 58, 60].

# >>>>>> Data Structures + Possible methods/strategies to use

# init. empty array (for the output sum)


# >>>>>> Algorithm

# 1. find all possible arrays from `list` with `k` number of elements

# 2. find biggest sum of of all possible arrays equal or smaller than `limit`

# 3. return sum or nil if not possible

# >>>>>> Code

def choose_best_sum(limit, k, list)
  possible_combinations = []

  list.combination(k) { |combination| possible_combinations << combination }

  output_sum = 0

  possible_combinations.each do |combination|
    sum = combination.sum
    output_sum = sum if sum <= limit && sum > output_sum
  end

  output_sum.zero? ? nil : output_sum
end

