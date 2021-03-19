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

arr = [0, 1, 5, 7]

p bad_two_sum?(arr, 6)
p bad_two_sum?(arr, 10)

