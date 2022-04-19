def check(s):
    if(len(s) == 1):
        return True
    return len(s) == len(set(s))

def lengthOfLongestSubstring(s):
    if len(s) == 0:
        return 0
    max_len = 1
    for index, curr_char in enumerate(s):
        for i in range(index, len(s)):
            if(i+1 - index) > max_len:
                substr = s[index:i+1]
                if check(substr):
                    ln = len(substr)
                    if ln > max_len:
                        max_len = ln
                else:
                    break
    return max_len

def findMedianSortedArrays(nums1, nums2):
    merged = nums1 + nums2
    merged.sort()
    ln = len(merged)
    if ln == 0:
        return 0
    elif ln == 1:
        return merged[0]
    elif (ln % 2) == 0:
        return (merged[ln//2 - 1] + merged[ln//2])/2.0
    else:
        return merged[ln//2]

def longestPalindrome(s):
    if len(s) == 0:
        return ''
    elif len(s) == 1:
        return s
    else:
        max_str = ''
        for index, curr_char in enumerate(s):
            for i in range(index, len(s)):
                substr = s[index:i+1]
                if substr == substr[::-1]:
                    ln = len(substr)
                    if ln > len(max_str):
                        max_str = substr
        return max_str