# https://www.codewars.com/kata/5526fc09a1bbd946250002dc


# >>> Problem

# You are given an array (which will have a length of at least 3, 
# but could be very large) containing integers. The array is 
# either entirely comprised of odd integers or entirely comprised 
# of even integers except for a single integer N. Write a method 
# that takes the array as an argument and returns this "outlier" N.

# input: an array of integers

# ouput: an integer of the input array (the only one) which is:
#        odd if all the other integers are even
#        even if all the other integers are odd

# >>> Cases

# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)


# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# >>> Algorithm

# 1. Find out if almost every integer is odd or even
#     - if they are odd, return the only even number
#     - otherwise,       return the only odd number

# 2. Return number


# >>> Code

def find_outlier(integers_array)
  odds_array = integers_array.select { |integer| integer.odd? }.size > 1 ? true : false

  integers_array.select { |integer| odds_array ? integer.even? : integer.odd? }[0]

end
