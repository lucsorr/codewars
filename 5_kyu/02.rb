# https://www.codewars.com/kata/52774a314c2333f0a7000688

# PEDAC

# >>>>>> Problem

# Write a function that takes a string of parentheses, 
# and determines if the order of the parentheses is valid. 

# The function should return true if the string is valid, and false if it's invalid.

# input: a string that contains parentheses characters

# output: a Boolean (true or false)

# implicit rule: for each "(" has to be a ")" !!
# to each ( a ) has to follow


# >>>>>> Examples and test cases

# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true

# >>>>>> Algorithm

# >>>>>> Code

def valid_parentheses(input_string)
  parentheses = input_string.delete("^()").gsub("()", "")

  if parentheses[0] == ")" || parentheses[-1] == "("
    false
  elsif parentheses.count("(") != parentheses.count(")")
    false
  else
    true
  end
end

# Commentary