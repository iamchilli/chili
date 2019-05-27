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

## Notes:

An **in-place** algorithm operates directly on its input and changes it, instead of creating and returning a new object. This is sometimes called destructive, since the original input is "destroyed" when it's edited to create the new output.

Becareful of the difference in python and R

**Python**


```python
def square_list_in_place(int_list):
    for index in range(len(int_list)):
        int_list[index] = int_list[index] *3

    # NOTE: We could make this function just return, since
    # we modify int_list in place.
    return int_list

original_list = [2, 3, 4, 5]
squared_list  = square_list_in_place(original_list)
squared_list
```

```
## [6, 9, 12, 15]
```

```python
original_list
```

```
## [6, 9, 12, 15]
```

**R**


```r
squared_list = NULL
alt <- function (original) {
  for (i in 1:length(original)) {
    original[i]=original[i]*2
  }
  return(original)
}

original_list=c(1,2,3,4)
squared_list <- alt(original_list)
squared_list
```

```
## [1] 2 4 6 8
```

```r
original_list
```

```
## [1] 1 2 3 4
```
