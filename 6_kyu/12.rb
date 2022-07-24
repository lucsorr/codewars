# https://www.codewars.com/kata/523f5d21c841566fde000009

# >>> Problem

# Your goal in this kata is to implement a difference function, 
# which subtracts one list from another and returns the result.


# input: two arrays

# output: one array

# it should remove all values from list `a`, which are present in list `b`
# keeping their order

# if a value is present in `b` all of its occurrences must be removed from the other


# >>> Examples + cases

# array_diff([1,2],[1]) == [2]

# array_diff([1,2,2], [1]) == [2,2]

# array_diff([1,2,2], []) == [1,2,2]


# >>> Algorithm

# 1. initialize empty output array

# 2. for every item in array a
#     - if it does not occur in array b: 
#       - add item to output array

# 3. return output array

def array_diff(array_a, array_b)
  array_a.each_with_object([]) do |item, output_array|
    output_array << item unless array_b.include?(item)
  end
end

# Commentary: 