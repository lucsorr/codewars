# https://www.codewars.com/kata/520b9d2ad5c005041100000f

# >>> Problem:

# Move the first letter of each word to the end of it, 
# then add "ay" to the end of the word. Leave punctuation marks untouched.

# input: a string

# output: a new 'pigged' string

# to pig: to move the first letter of each word to the end
#         append 'ay' to the end of the word

# >>> Examples and test cases:

# pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'

# pig_it('Hello world !')     == 'elloHay orldway !'

# pig_it('Aloha. Friends. !') == 'lohaAay. riendsFay. !'


# >>> DS:

# split the string in words: array of words

# return array of modified words joined in a single string: output string


# >>> Algorithm


# 1. split the string in an array of words

# # 2. for each word in array of words:
#     - unless the word is a sign (like "!" or "?"):

  # #     - move first letter to word's last position

  # #     - append letters 'ay' to word

  #       - append word's punctuation sign if any (like "." or ",")

# # 3. join array of words in a single string

# # 4. return single string

def pig_it(input_string)
  words_array = input_string.split(" ")

  words_array.map do |word|
    if word.size == 1 && word.match?(/\W/)
      word
    else
      pigged_word = ""

      index = 1
      loop do
        break if index == word.size

        pigged_word << word[index] unless word[index].match?(/\W/)

        index += 1
      end

      pigged_word = pigged_word + word[0] + "ay"

      pigged_word += word[-1] if word[-1].match?(/\W/)

      pigged_word
    end
  end.join(" ")
end

# Commentary