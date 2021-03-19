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
    second_letters = str2.split("") # O(1)
    str1.each_char do |char| # O(n)
        if second_letters.include?(char) # O(n)
            i = second_letters.find_index(char) # O(n)
            second_letters.delete_at(i) # O(1)
        end
    end
    second_letters.empty? # O(1)
end

# 1 + n * (n * (n + 1)) + 1
# n * (n * (n + 1)) >> n * n && n * 1 == n
# n * (n^2 + n)
# n^3 + n^2

second_anagram?(string1, string2)
second_anagram?(string1, string3)

def third_anagram?(str1, str2)
    letters_1 = str1.split("")          # O(1)
    letters_2 = str2.split("")          # O(1)
    letters_1.sort == letters_2.sort    # O(n log(n)) + O(n log(n))
end

# (n log(n)) + (n log(n))
# 2(n log(n))
# (n log(n))

p third_anagram?(string1, string2)
p third_anagram?(string1, string3)