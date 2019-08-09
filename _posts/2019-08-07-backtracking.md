---
title: "Algorithm: backtracking "
date: "2019-08-07"
categories: Python
tags: [python]
---

**46.permutation** 给定一个没有重复数字的序列，返回其所有可能的全排列。

在递归过程中，需要保证在同一递归链中不要访问访问过的元素，但是可以访问已经访问过，但是不在当前递归链中的元素。

第一种思路：除掉母树的数，进入下一层，这样避免取到相同的数。需要track母树和自己的数字。
```python
#backtracking
def permute(self, nums):
    res = []
    self.dfs(nums, [], res)
    return res

def dfs(self, nums, path, res):
    if not nums:
        res.append(path)
        # return # backtracking
    for i in xrange(len(nums)):
        self.dfs(nums[:i]+nums[i+1:], path+[nums[i]], res)
```

举个栗子，nums=[1,2,3]
```python
dfs(nums = [1, 2, 3] , path = [] , result = [] )
|____ dfs(nums = [2, 3] , path = [1] , result = [] )
|      |___dfs(nums = [3] , path = [1, 2] , result = [] )
|      |    |___dfs(nums = [] , path = [1, 2, 3] , result = [[1, 2, 3]] ) # added a new permutation to the result
|      |___dfs(nums = [2] , path = [1, 3] , result = [[1, 2, 3]] )
|           |___dfs(nums = [] , path = [1, 3, 2] , result = [[1, 2, 3], [1, 3, 2]] ) # added a new permutation to the result
|____ dfs(nums = [1, 3] , path = [2] , result = [[1, 2, 3], [1, 3, 2]] )
|      |___dfs(nums = [3] , path = [2, 1] , result = [[1, 2, 3], [1, 3, 2]] )
|      |    |___dfs(nums = [] , path = [2, 1, 3] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3]] ) # added a new permutation to the result
|      |___dfs(nums = [1] , path = [2, 3] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3]] )
|           |___dfs(nums = [] , path = [2, 3, 1] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1]] ) # added a new permutation to the result
|____ dfs(nums = [1, 2] , path = [3] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1]] )
       |___dfs(nums = [2] , path = [3, 1] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1]] )
       |    |___dfs(nums = [] , path = [3, 1, 2] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2]] ) # added a new permutation to the result
       |___dfs(nums = [1] , path = [3, 2] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2]] )
            |___dfs(nums = [] , path = [3, 2, 1] , result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]] ) # added a new permutation to the result
```

另一种思路: 让每个数交换到这一层的第一个数，后面的数进入下一层，这样避免取到一样的树。需要track每一层的第一个数地址。注意回到上一层的时候，第一个数要交换回来。
```python
def permute(self, nums):
    def backtrack(start, end):
        if start == end:
            ans.append(nums[:]) #backtracking point
        for i in range(start, end):
            nums[start], nums[i] = nums[i], nums[start] #move each value in the first place, go next level
            backtrack(start+1, end)
            nums[start], nums[i] = nums[i], nums[start]

    ans = []
    backtrack(0, len(nums))
    return ans
```



**39.Combination sum** 给定一个无重复元素的数组 *candidates* 和一个目标数 *target*，找出 *candidates* 中所有可以使数字和为 *target* 的组合。

*candidates* 中的数字可以无限制重复被选取。
