# https://www.codewars.com/kata/55c6126177c9441a570000cc/train/ruby



# >>>>>> Problem

# Sort an array of numbers by their weight.
# (Weight: the sum of its digits)

# input: a string of space separated integers

# output: a new sorted string of elements by their weight


# >>>>>> Caveats

# When two numbers have the same "weight", 
# let us class them as if they were strings 
# (alphabetical ordering) and not numbers:

# 180 is before 90 since, having the same "weight" (9), it comes before as a string.

# All numbers in the list are positive numbers and the list can be empty.


# >>>>>> Examples and test cases

# order_weight("23 12 55 71") == "12 23 71 55"

# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 

# "100 180 90 56 65 74 68 86 99"

# >>>>>> Data Structures + Possible methods to use

# we'll split string in an array of integers

# sort_by ???

# >>>>>> Algorithm

# 1. split string in an array of integers

# 2. implement own version of sort:
#     if integer a is equal to integer b:
#       - sort by string version of integer (by the character's place in ASCII table)
#     else
#       - sort by sum of its digits

# 3. return sorted version of list (array converted back in string)

# >>>>>> Code

def order_weight(string_list)
  string_list.split(' ').sort do |integer_a_string, integer_b_string|
    integer_a_sum = integer_a_string.to_i.digits.sum
    integer_b_sum = integer_b_string.to_i.digits.sum

    if integer_a_sum == integer_b_sum
      integer_a_string <=> integer_b_string
    else
      integer_a_sum <=> integer_b_sum
    end
  end.join(' ')
end
