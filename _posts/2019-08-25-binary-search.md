---
title: "Algorithm: Binary search "
date: "2019-08-25"
categories: Python
tags: [python]
---

## 704. Binary Search
Given a sorted (in ascending order) integer array nums of n elements and a target value, write a function to search target in nums. If target exists, then return its index, otherwise return -1.

Example 1:
Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4

```python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        l, r = 0, len(nums)     # right can not be caught, so use len(nums), not len(nums)-1
        if target > nums[-1] or target <nums[0]:
            return -1

        while l < r:            # use < , not <=          
            m = l + (r - l)//2  # m is in [l,r),  right can not be caught
            print(l,m,r)
            if nums[m] == target:
                return m
            elif nums[m] < target:
                l = m + 1       # use +1, otherwise infinite loop with j=i+1, because m cannot be j
            else:
                r = m           # not use -1,otherwise skip i with j=i+1, because m = i
        return -1

        l, r = 0, len(nums)-1   # -1
        if target > nums[-1] or target < nums[0]:
            return -1

        while l <= r:
            m = l + (r - l)//2  # m is in [l,r]
            if nums[m] == target:
                return m
            elif nums[m] < target:
                l = m + 1
            else:
                r = m - 1       # -1, 依据right能不能取到而定，如果right可以取到则，right必须要-1，不减1的话，还是会出现i =j死循环。
        return -1    
```
