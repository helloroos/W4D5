# my_min
# Given a list of integers find the smallest number in the list.

# Example:

#     list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#     my_min(list)  # =>  -5
# Phase I
# First, write a function that compares each element to every other element of the list.
# Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_min(array)
    smallest = array.first                          # O(1)
    array.each_with_index do |ele1, idx1|           # O(n)
        array.each_with_index do |ele2, idx2|       # O(n)
            if idx2 > idx1                          # O(1)
                smallest = ele2 if ele2 < smallest  # O(1)
            end
        end
    end
    smallest                                        # O(1)
end
# 1 + n * (n * 2) + 1
# 1 + 1 + n * n * 2
# 2 * n^2
# n^2 

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of
# the minimum. What is the time complexity?

def my_min_two(array)
    smallest = array.first 

    array.each do |ele|
        if ele < smallest 
            smallest = ele
        end
    end

    smallest 
end

p my_min_two(list)

# Largest Contiguous Sub-sum
# You have an array of integers and you want to find the largest contiguous (together in
# sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

# Example:

#     list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:

#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:

#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])
# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested
# loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array
# and return the max.

# Discuss the time complexity of this solution.

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory.
# Keep a running tally of the largest sum. To accomplish this efficient space complexity,
# consider using two variables. One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.