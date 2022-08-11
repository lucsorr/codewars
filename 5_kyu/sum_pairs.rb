# https://www.codewars.com/kata/54d81488b981293527000c8f/train/ruby

# >>>>>> Problem

# Given a list of integers and a single sum value, return the first two values 
# (parse from the left please) in order of appearance that add up to form the sum.

# input: an array of integers and an integer (a sum value)

# output: a pair (an array of two integers)


# >>>>>> Caveats

# Negative numbers and duplicate numbers can and will appear.

# return nil if the pair is not found (not possible to find sum value)

# >>>>>> Examples and test cases

# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]

# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]

# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)

# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]

# >>>>>> Data Structures + Possible methods/strategies to use

# output array for pair (init. to nil?) or return nil if output_array.emtpy? ??

# each_with_index

# loop

# >>>>>> Algorithm

# >>>>>> Code

def sum_pairs(integers_array, sum_value)
  integers_array_size = integers_array.size
  min_closeness = integers_array_size

  pair = [nil, min_closeness]

  index_a = 0
  loop do
    integer_a = integers_array[index_a]
    index_b = index_a + 1

    loop do
      min_closeness = index_b - index_a

      integer_b = integers_array[index_b]

      current_pair_sum = integer_a + integer_b
      
      if current_pair_sum == sum_value && min_closeness < pair[1]
        pair = [[integer_a, integer_b], min_closeness]
      end
      
      index_b += 1
      break if index_b >= integers_array_size
    end

    index_a += 1
    break if index_a > integers_array_size - 2
  end

  pair[0]
end



