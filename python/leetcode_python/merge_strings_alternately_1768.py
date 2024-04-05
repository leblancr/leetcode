# 1768 Merge Strings Alternately
# You are given two strings word1 and word2. Merge the strings by adding letters
# in alternating order, starting with word1. If a string is longer than the other,
# append the additional letters onto the end of the merged string.
#
# Return the merged string.

class MergeStrings:
    def __init__(self, words):
        self.words = words

    # takes nothing, returns string
    def merge_strings(self) -> str:
        merged_string = ''

        for i in range(min(len(self.words[0]), len(self.words[1]))):
            merged_string += self.words[0][i] + self.words[1][i]

        return merged_string + self.words[0][i + 1:] + self.words[1][i + 1:]



