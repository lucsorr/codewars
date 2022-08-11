# https://www.codewars.com/kata/526989a41034285187000de4/


# >>>>>> Problem

# Implement a function that receives two IPv4 addresses, 
# and returns the number of addresses between them (including the first one, excluding the last one).

# input: two strings (valid ip addesses)

# output: an integer (all possible number ip. ad. between the first and the last one, excluding the last )


# >>>>>> Caveats

# All inputs will be valid IPv4 addresses in the form of strings. 

# The last address will always be greater than the first one.

# ip: four integers, dot separated, from 0 to 255

# >>>>>> Examples and test cases

# * With input "10.0.0.0", "10.0.0.50"  => returns   50 
# * With input "10.0.0.0", "10.0.1.0"   => returns  256 
# * With input "20.0.0.10", "20.0.1.0"  => returns  246

# >>>>>> Data Structures + Possible methods/strategies to use

# initial_ip + last_ip:
# two arrays of integers, each integer representing one ip number 
# (gotten splitting ip address using the dot as limiter)

# >>>>>> Algorithm

# 1. convert input strings in array of integers = initial_ip + last_ip

# 2. init. `number_of_ips` to 0

# 2. LOOP:
#     - init. `current_number` to - 1

#     LOOP:
  #     - if number at `current_number` index position is 255
  #     - substract 1 to `current_number`
  #     - break if number at `current_number` index position is not 255 

#     - sum 1 to the number at `current_number` index position

#     - set all previous numbers to 0 unless `current_number` is -1

#     - sum 1 to `number_of_ips`

#     - if `initial_ip` is equal to `last_ip`: break

#

# >>>>>> Code

def ipsBetween(start, ending)
  initial_ip = start.split(".").map { |number_string| number_string.to_i }
  ending_ip = ending.split(".").map { |number_string| number_string.to_i }

  number_of_ips = 0
  loop do
    current_number = -1
    
    loop do
      current_number -= 1 if initial_ip[current_number] == 255
      break unless initial_ip[current_number] == 255
    end
    
    initial_ip[current_number] += 1
    
    unless current_number == -1
      (current_number + 1..-1).each { |previous| initial_ip[previous] = 0  }
    end
    
    number_of_ips += 1
    
    break if initial_ip == ending_ip
  end

  number_of_ips
end

p ipsBetween("170.1.0.0", "170.255.255.255") # == 1