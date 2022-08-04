# https://www.codewars.com/kata/5270d0d18625160ada0000e4/train/ruby


# >>>>>> Problem

# Greed is a dice game played with five six-sided dice. 
# Your mission, should you choose to accept it, is to score a throw according to these rules. 
# You will always be given an array with five six-sided dice values.

# input: an array of 5 integers each representing one dice (1-6)

# output: an integer representing the score

# Score:
# Three 1's => 1000 points
# Three 6's =>  600 points
# Three 5's =>  500 points
# Three 4's =>  400 points
# Three 3's =>  300 points
# Three 2's =>  200 points
# One   1   =>  100 points
# One   5   =>   50 point


# >>>>>> Caveats

# A single die can only be counted once in each roll. 
# For example, a given "5" can only count as part of a triplet (contributing to the 500 points) 
# or as a single 50 points, but not both in the same roll.


# >>>>>> Examples and test cases

# Throw       Score
# ---------   ------------------
# 5 1 3 4 1   250:  50 (for the 5) + 2 * 100 (for the 1s)
# 1 1 1 3 1   1100: 1000 (for three 1s) + 100 (for the other 1)
# 2 4 4 5 4   450:  400 (for three 4s) + 50 (for the 5)

# >>>>>> Data Structures + Possible methods/strategies to use

# use a buffer array b

# each_with_object

# count

# >>>>>> Algorithm

# 0. store points in a constant

# 1. for each number in input Array:
#     - store number in array b
#     - if number count in array b is 3:
#           - update score according score constant
#           - remove all 3 numbers in array b
# 2. for each numer in array b:
#     - if 1 or 5: update score according constant

# 3. return score

# >>>>>> Code

POINTS = { triplets: {1 => 1000 , 2 => 200 , 3 => 300, 4 => 400, 5 => 500, 6 => 600},
           singles: {1 => 100, 5 => 50} }

def score(dice)
  points = 0

  dice.each_with_object([]) do |die, array_b|
    array_b << die

    if array_b.count(die) == 3
      points += POINTS[:triplets][die]
      array_b.delete(die)
    end
  end.each { |die| points += POINTS[:singles][die] if [1, 5].include?(die) }

  points
end
