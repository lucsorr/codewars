=begin
https://www.codewars.com/kata/554ca54ffa7d91b236000023

Enough is enough!

Can you help them to remove numbers such that their list 
contains each number only up to N times, without changing the order?

Task
Given a list and a number, create a new list that contains each number of list
at most N times, without reordering.

For example if the input number is 2, and the input list is [1,2,3,1,2,1,2,3], 
you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 
being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].
With list [20,37,20,21] and number 1, the result would be [20,37,21].

PEDAC

# Problem:

input: an array of integers, an integer `n`
output: an array of integers 

n is the number of max. times a certain element(an integer) can occur at the array

the task is to output an array with the same integers of the input array but with
integer removed that repeat more than n times, while keeping the same order



# Examples:

delete_nth([1,2,3,1,2,1,2,3], 2) == [1, 2, 3, 1, 2, 3]


