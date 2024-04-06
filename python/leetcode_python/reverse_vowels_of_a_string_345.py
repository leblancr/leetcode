# Given a string s, reverse only all the vowels in the string and return it.
# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and
# upper cases, more than once.
#
# Example 1:
#
# Input: s = "hello"
# Output: "holle"
#
# Example 2:
#
# Input: s = "leetcode"

class ReverseVowels:
    def __init__(self, input_string):
        self.input_string = input_string
        self.chars = list(self.input_string)  # turn string to list of chars
        self.vowels = "aeiouAEIOU"

    def reverse_vowels(self) -> str:
        pl, pr = 0, len(self.chars) - 1  # init pointers to begin and end of list
        
        # keep going until pointers cross
        # if both pointers point to a vowel, swap them
        while pl < pr:
            if self.chars[pl] in self.vowels and self.chars[pr] in self.vowels:
                self.chars[pl], self.chars[pr] = self.chars[pr], self.chars[pl]
                pl += 1
                pr -= 1
            if self.chars[pl] not in self.vowels:
                pl += 1
            if self.chars[pr] not in self.vowels:
                pr -= 1
                
        return "".join(self.chars)

