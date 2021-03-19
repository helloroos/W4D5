def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele1, i|
        arr.each_with_index do |ele2, j|
            if j > i 
                return true if ele1 + ele2 == target_sum
            end
        end
    end
    false 
end

