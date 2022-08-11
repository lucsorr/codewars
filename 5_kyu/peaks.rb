# https://www.codewars.com/kata/5279f6fe5ab7f447890006a7/


# >>>>>> Problem

# write a function that returns the positions and the values of the 
# "peaks" (or local maxima) of a numeric array.

# The output will be returned as an object with two properties: pos and peaks. 
# Both of these properties should be arrays. If there is no peak in the given array, 
# then the output should be {pos: [], peaks: []}.

# input: an array of integers

# output: a hash of two pairs, index position pos: array, peak integers peaks: array


# >>>>>> Caveats

# pos: index position of the integer

# peak: integer

# peak: integer between two lower integers (ie.: 1,[2],1)

# plateau: series of equal integers between two lower integers (ie.: 1,[2,2,2,2],1)

# first and last integer of array: will never be peaks (they're not between integers)

# All input arrays will be valid integer arrays (although it could still be empty), 
# so you won't need to validate the input.

# In case of a plateau-peak, please only return the position and value of 
# the beginning of the plateau.

# >>>>>> Examples and test cases

# [1, 2, 1] == pos: [1], peak: [2]
  
# Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak 
# while [1, 2, 2, 2, 3] and [1, 2, 2, 2, 2] do not. 
  
# Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) 
# should return {pos: [3, 7], peaks: [6, 3]} (or equivalent in other languages)


# >>>>>> Data Structures + Possible methods/strategies to use

# hash, two pairs

# input array of integers


# >>>>>> Algorithm

# 1 . init hash with pairs poisition:, peak:

# 2. for each integer in input array from the second to the one before the last:
#     - if CURRENT integer is greater than previous integer:
#           - for every SUCCESIVE integer:
#               - if SUCCESIVE integer is smaller than CURRENT
#                   store index position of CURRENT, CURRENT in hash pair
#               - if SUCCESIVE integer is greater than CURRENT
#                   skip to next CURRENT integer
#               - else (both equals)
#                   skip to next SUCCESSIVE integer

# 3. return output hash


# >>>>>> Code]

def pick_peaks(input_array)
  output_hash = { "pos" => [], "peaks" => [] }

  return output_hash if input_array.empty?

  array_size = input_array.size

  counter_a = 1
  loop do
    current_integer = input_array[counter_a]

    if current_integer > input_array[counter_a - 1]
      counter_b = counter_a + 1

      loop do
        next_integer = input_array[counter_b]

        if next_integer < current_integer
          output_hash["pos"] << counter_a
          output_hash["peaks"] << current_integer
          break
        elsif next_integer > current_integer
          break
        end

        counter_b += 1
        break if counter_b == array_size
      end
    end

    counter_a += 1
    break if counter_a == array_size - 1
  end

  output_hash
end


