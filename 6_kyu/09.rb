# https://www.codewars.com/kata/5264d2b162488dc400000001/train/ruby

# >>>> Problem

# Write a function that takes in a string of one or more words, 
# and returns the same string, but with all five or more letter 
# words reversed (Just like the name of this Kata).

# input: string

# output: a new string

# Strings passed in will consist of only letters and spaces.

# Spaces will be included only when more than one word is present.


# >>> Examples + cases

# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 

# spinWords( "This is a test") => returns "This is a test" 

# spinWords( "This is another test" )=> returns "This is rehtona test"


# >>> Algorithm

# 1. transform input string into an array of word if the string has more than one word

# 2. for each word in the input string:

#     - reverse characters in word if the word has five or more letters

# 3. join input string's words in a single string

# 4. return input string

# >>> Code

def spin_words(input_string)

  words = input_string.split(" ")

  words.map! do |word|
    word.size >= 5 ? word.reverse : word
  end

  words.join(" ")

end

def spin_words_short(input_string)

  input_string.split(" ").map do |word|
    word.size >= 5 ? word.reverse : word
  end.join(" ")

# end

# Commentary:







