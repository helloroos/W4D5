string = "elvis"

def first_anagram?(str1, str2)
    letters = str1.split("")                # O(1)

    anagrams = letters.permutation.to_a     # O(n!)
    joined = anagrams.map(&:join)           # O(n)
    joined.include?(str2)                   # O(1)
end
# 1 + n! + n + 1
# n!

p first_anagram?(string, "sally")
p first_anagram?(string, "vlies")

