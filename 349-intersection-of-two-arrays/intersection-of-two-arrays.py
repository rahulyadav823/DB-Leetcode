class Solution:
    def intersection(self, nums1, nums2):
        s = set(nums1)
        result = []

        for num in nums2:
            if num in s:
                result.append(num)
                s.remove(num)

        return result