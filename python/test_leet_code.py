# content of test_sample.py
import leet_code

def test_lengthOfLongestSubstring():
    assert leet_code.lengthOfLongestSubstring("abcabcbb") == 3
    assert leet_code.lengthOfLongestSubstring(" ") == 1
    assert leet_code.lengthOfLongestSubstring("") == 0
    assert leet_code.lengthOfLongestSubstring("au") == 2

def test_findMedianSortedArrays():
    assert leet_code.findMedianSortedArrays([1,3], [2]) == 2.0
    assert leet_code.findMedianSortedArrays([1,2], [3,4]) == 2.5

def test_longestPalindrome():
    assert leet_code.longestPalindrome('babad') in ['aba', 'bab']
    assert leet_code.longestPalindrome('cbbd') == 'bb'