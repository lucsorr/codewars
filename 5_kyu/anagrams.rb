# https://www.codewars.com/kata/523a86aa4230ebb5420001e1

# >>>>>> Problem

# Write a function that will find all the anagrams of a word from a list. 
# You will be given two inputs a word and an array with words. 
# You should return an array of all the anagrams or an empty array if there are none. 

# input: two arguments: a word (string), a list of possible anagrams for that word (array)

# output: an array of anagrams from the list


# >>>>>> Caveats

# return empty array if none possible

# >>>>>> Examples and test cases

# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

# >>>>>> Data Structures + Possible methods to use

# chars
# sort
# ==
# select

# >>>>>> Algorithm

# 1. for each anagram in anagram list:
#     - if a sorted version of anagram is equal to sorted version of input word:
#         - store anagram in output array

# 2. return output array

# >>>>>> Code

def anagrams(word, anagram_list)
  sorted_chars_word = word.chars.sort

  anagram_list.select { |anagram| anagram.chars.sort == sorted_chars_word }
end
