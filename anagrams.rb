string1 = "elvis"
string2 = "sally"
string3 = "lives"

def first_anagram?(str1, str2)
    letters = str1.split("")                # O(1)
    anagrams = letters.permutation.to_a     # O(n!)
    joined = anagrams.map(&:join)           # O(n)
    joined.include?(str2)                   # O(1)
end
# 1 + n! + n + 1
# n!

first_anagram?(string1, string2)
first_anagram?(string1, string2)

def second_anagram?(str1, str2)
    second_letters = str2.split("")             # O(n)
    str1.each_char do |char|                    # O(n)
        if second_letters.include?(char)        # O(n)
            i = second_letters.find_index(char) # O(n)
            second_letters.delete_at(i)         # O(n)
        end
    end
    second_letters.empty?                       # O(1)
end

# n + n * (n + n + n) + 1
# n + n * 3n
# n + 3n^2
# n^2

second_anagram?(string1, string2)
second_anagram?(string1, string3)

def third_anagram?(str1, str2)
    letters_1 = str1.split("")          # O(n)
    letters_2 = str2.split("")          # O(n)
    letters_1.sort == letters_2.sort    # O(n log(n)) + O(n log(n))
end

# n + n + (n log(n)) + (n log(n))
# 2n + 2(n log(n))
# (n log(n))

third_anagram?(string1, string2)
third_anagram?(string1, string3)

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)                          # O(1)
    str1.each_char { |char| hash[char] += 1 }   # O(n)
    str2.each_char { |char| hash[char] -= 1 }   # O(n)
    hash.all? { |k, v| v.zero? }                # O(n)
end

# 1 + n + n + n
# 3n
# n 

p fourth_anagram?(string1, string2)
p fourth_anagram?(string1, string3)