---
title: "Data stucture"
date: "2019-05-27"
categories: Coding
tags: [python, R]
---

# Array

Some languages (including Python) don't have these bare-bones arrays.

Don't want to specify the size of your array ahead of time? One option: use a dynamic array.

Want to look up items by something other than an index? Use a dictionary.

## Strengths:

1. *Fast lookups.* Retrieving the element at a given index takes O(1) time, regardless of the length of the array.
2. *Fast appends.* Adding a new element at the end of the array takes O(1) time.

## Weaknesses:

1. *Fixed size.* You need to specify how many elements you're going to store in your array ahead of time. (Unless you're using a fancy dynamic array.)
2. *Costly inserts* and deletes. You have to "scoot over" the other elements to fill in or close gaps, which takes worst-case O(n)O(n) time.



```python
#condition
a = 6
if a < 5:
    b = a
if a > 10:
    b = 0
else:
    b=100
    
b   
```

```
## 100
```

```python
x = "study"
try:
    a = x + 1
except:
    a = 0 + 1
a
```

```
## 1
```

