# https://www.codewars.com/kata/513e08acc600c94f01000001

# PEDAC

# >>>>>> Problem

# Convert all three decimal numbers into hexadecimal and
# return them joined in a single string


# input: three integers between 0 and 255

# output: a single string

# you have to round any values that fall out of that Range
# to the closest valid value

# >>>>>> Examples and test cases

# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

# Should we expect inputs of < 0 ??? YES

# >>>>>> Algorithm

# 1. initialize empty output string ""

# 2. for each input integer
#     - round integer if falls out of 0-255 range
#     - append hex. equivalent to output string

# 3. return output string with all uppercase letters.


# >>>>>> Code

def rgb(integer_a, integer_b, integer_c)
  [integer_a, integer_b, integer_c].each_with_object("") do |integer, output_string|
    integer = integer.clamp(0, 255)

    output_string << format("%02x", integer)
  end.upcase
end
