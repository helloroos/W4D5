string = "elvis"

def first_anagram?(str)
    anagrams = []
    str.each_char.with_index do |char, i|
        # temp = str[0...i] + str[i + 1..-1]
        (0...str.length - 1).each do |j|
            first = str[0...j + 1]
            last = str[j + 1..-1]
            anagrams << first + char + last
        end
        p temp
    end
end

first_anagram?(string)

# Iterate through the str
# Range from 0 to str.legnth - 1
# Plug each char into the idx of the range