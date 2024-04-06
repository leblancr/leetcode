# Given an input string s, reverse the order of the words.
# A word is defined as a sequence of non-space characters.
# The words in s will be separated by at least one space.
# Return a string of the words in reverse order concatenated by a single space.
# Note that s may contain leading or trailing spaces or multiple spaces between two words.
# The returned string should only have a single space separating the words.
# Do not include any extra spaces.
#
# Example 1:
#
# Input: s = "the sky is blue"
# Output: "blue is sky the"
#
# Example 2:
#
# Input: s = "  hello world  "
# Output: "world hello"
# Explanation: Your reversed string should not contain leading or trailing spaces.
#
# Example 3:
#
# Input: s = "a good   example"
# Output: "example good a"
# Explanation: You need to reduce multiple spaces between two words to a single space in
# the reversed string.


class ReverseWords:
    def __init__(self, input_string):
        self.input_string = input_string
        self.words = list(self.input_string.split())  # turn string to list of words

    def reverse_words(self) -> str:
        reversed_list = self.words[::-1]

        print(reversed_list)
        return ' '.join(reversed_list)

