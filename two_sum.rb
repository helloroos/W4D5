require "byebug"

def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele1, i|                        # O(n)
        arr.each_with_index do |ele2, j|                    # O(n)
            if j > i                                        # O(1)
                return true if ele1 + ele2 == target_sum    # O(1)
            end
        end
    end
    false                                                   # O(1)
end 

# n * (n * (1 + 1)) + 1
# n * n
# n^2

arr = [0, 5, 1, 7]
# sorted = [1, 2, 3, 4, 5, 6, 7, 8, 16] # 17 

bad_two_sum?(arr, 6)
bad_two_sum?(arr, 10)

def okay_two_sum?(arr, target_sum)
    # debugger
    arr.sort!
    until arr.last < target_sum
        arr.pop
    end
    while arr.length >= 2
        val = arr.pop 
        new_target = target_sum - val 
        return true if arr.include?(new_target) 
    end
    false
end
# debugger
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false