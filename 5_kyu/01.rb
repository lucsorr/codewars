# https://www.codewars.com/kata/52597aa56021e91c93000cb0

# PEDAC

# >>>>>> Problem

# Write an algorithm that takes an array and moves all of the zeros 
# to the end, preserving the order of the other elements.

# input: an array of numbers

# output: the same array with all 0 at the end

# >>>>>> Examples and test cases

# move_zeros([1,2,0,1,0,1,0,3,0,1]) == [1,2,1,1,3,1,0,0,0,0]

# move_zeros([1, 0, 3, 0]) == [1, 3, 0, 0]

# >>>>>> Algorithm

# 1. count how many 0s the input array has

# 2. remove all 0s from input Array

# 3. append as many 0s to input array as 0s counted in step 1.

# >>>>>> Code

def move_zeros(input_array)

  zeros = input_array.count(0)

  input_array.delete(0)

  zeros.times { input_array << 0 }

  input_array

end

# Bad practice (do not mutate the object as you are iterating over it!)
def move_zeros_short(input_array)
  input_array.each_with_index do |integer, index|
    input_array << input_array.slice!(index) if integer == 0
  end
end

# Good practice version of the same method
def move_zeros_short(input_array)
  input_array_clone = input_array.clone
  input_array_clone.each_with_index do |integer, index|
    input_array << input_array.delete_at(input_array.index(0)) if integer == 0
  end
  input_array
end


