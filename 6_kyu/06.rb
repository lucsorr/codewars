# https://www.codewars.com/kata/53bb1201392478fefc000746/ruby

# >>>>> Problem

# return an array of suspects

# input: a hash, in which each key is a suspectd and each value, an array of integers, represent what
#        the suspects have inside their pockets
#        an array of integers, each integer representing an object the suspects are allowed to have

# output: an array of suspects (keys in the input hash) that have items that are not allowed (that are
#         not in the list of the allowed items)

# pocket contents can be defined by a constant variable assigned to a hash, which we will use as the
# first of the method arguments.

# If no suspect is found or there are no pockets (pockets == nil), the method should return nil

# >>>>>> Examples

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 

# find_suspects(pockets, [1, 2]) # == [:tom, :jane] (tom has 5, which is not allowed -not in the allowed items list-, 
#                                #                   and jane has a 7, also not allowed)
# find_suspects(pockets, [1, 7, 5, 2]) # == nil
# find_suspects(pockets, []) # == [:bob, :tom, :jane]
# find_suspects(pockets, [7]) # == [:bob, :tom]

# >>>>> Algorithm

# 1. Select everyone with a pocket (non empty values or nil) in suspects_with_pockets hash

# # 2. Check if the list of suspects is empty:
#       - if yes: return nil
#       - if no: return list of suspects


def find_suspects(people, allowed_items)

  suspects_with_pockets = people.compact.select do |_, pocket|
                            !pocket.empty?
                          end
  
  suspects = suspects_with_pockets.select do |_, pocket|
               pocket.any? do |pocket_item|
                !allowed_items.include?(pocket_item)
               end 
             end.keys

  suspects.empty? ? nil : suspects

end

# Commentary

