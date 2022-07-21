# https://www.codewars.com/kata/5894318275f2c75695000146

# Simple Fun #79: Delete a Digit

# PEDAC

# > Problem:

  # Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

  # Input: an integer n
  # Output: an integer

  # Constraints: 10 ≤ n ≤ 1000000.


# > Examples + test cases

  # delete_digit(152) == 52

  # delete_digit(1001) ==101

  # single digit input ??


# > Algorithm

  # 1. INITIALIZE variable `max_number` to the input digit `n` minus the first digit

  # 2. LOOP for every digit from second digit of `n` to the last digit:

  #   a. INITIALIZE variable `n_buffer` to `n` (this line will restore the 
  #      original digits to `n_buffer` on each iteration)
  #   b. REMOVE digit from `n_buffer`
  #   c. CHECK if n_buffer is larger than `max_number`:
  #     - if yes: reassign variable `max_number` to `n_buffer`
  #     - else: NEXT

  # 3. RETURN `max_number`



def delete_digit(number)
  digits_array = number.digits.reverse

  max_number = digits_array[1..-1].join.to_i

  digits_array[1..-1].each_index do |index|
    n_buffer = number.digits.reverse
    
    n_buffer.delete_at(index)
    n_buffer = n_buffer.join.to_i

    max_number = n_buffer if n_buffer > max_number
  end

  max_number
end
