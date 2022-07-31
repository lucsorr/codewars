# https://www.codewars.com/kata/525c65e51bf619685c000059

# >>>>>> Problem

# Write a function cakes(), which takes the recipe (object) and 
# the available ingredients (also an object) and returns the maximum 
# number of cakes Pete can bake (integer).

# input: a hash (recipe) + a hash (available ingredients in kitchen)

# output: an integer (how many cakes Pete can make with available ingredients)


# >>>>>> Caveats

# there are no units for the amounts 
# (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200).

# Ingredients that are not present in the objects, can be considered as 0.

# any input ingredient amount of 0???

# any input ingredient float???

# >>>>>> Examples and test cases

# // must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
# // must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 

# >>>>>> Data Structures + Possible methods to use

# we will store the result of the division in an array, from which we'll extract the min. value
#   (the integer number of possible cakes)

# >>>>>> Algorithm

# (very high level)

# 1. For each ingredient in recipe:
#     - if ingredient exists in kitchen:
#         - divide amount in kitchen ingredient by amount in recipe ingredient
#         - store result in an array (enough_for)
#     - else: return 0

# 2. return min. value in enough_for

# >>>>>> Code

def cakes(recipe, kitchen)
  recipe.each_with_object([]) do |(ingredient, _), enough_for|
    return 0 unless kitchen.key?(ingredient)

    enough_for << (kitchen[ingredient] / recipe[ingredient]).to_i
  end.min
end
