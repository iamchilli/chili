---
layout: post
title: "Data stucture"
date: "2019-05-27"
categories: Coding
tags: [coding, python]
output:
  md_document:
    variant: markdown_github
---


# Array

Some languages (including Python) don't have these bare-bones arrays.

## Strengths:

1. *Fast lookups.* Retrieving the element at a given index takes O(1) time, regardless of the length of the array.
2. *Fast appends.* Adding a new element at the end of the array takes O(1) time.

## Weaknesses:

1. *Fixed size.* You need to specify how many elements you're going to store in your array ahead of time. (Unless you're using a fancy dynamic array.)
2. *Costly inserts* and deletes. You have to "scoot over" the other elements to fill in or close gaps, which takes worst-case O(n)O(n) time.
