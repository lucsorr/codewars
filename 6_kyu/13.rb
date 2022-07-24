# https://www.codewars.com/kata/5266876b8f4bf2da9b000362/train/ruby

# >>> Problem


# You probably know the "like" system from Facebook and other pages. 
# People can "like" blog posts, pictures or other items. We want to 
# create the text that should be displayed next to such an item.

# input: an array of names

# output: a string

# Implement the function which takes an array containing the names 
# of people that like an item. It must return the display text 
# as shown in the examples:

# >>> Examples

# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

# >>> Algorithm:

# 1. Return `no one likes this` if names array is empty

# 2. check how many people like the thing (names in the array)
#     - if 3 or less: print all the names, comma-sepparated, inserting an "and"
#                     before the last one
#     - if 4 or more: print the first two names, comma-separated, and and "and `n` other(s)"
#                     where `n` is the quantity of people whose name has not been printed

# >>> Code

def likes(names)
  case names.size
  when 0
    "no one likes this"
  when 1
    names[0] + " likes this"
  when < 4
    names_string = 
    names.each_with_object("") do |name, output_string|
      output_string << case name
                       when names[-2] then name + " "
                       when names[-1]  then "and " + name
                       else name + ", "
                       end
    end

    names_string + " like this"
  else
    names_string = names[0, 2].join(", ")

    names_string + " and #{names.size - 2} others like this"
  end
end

# Commentary