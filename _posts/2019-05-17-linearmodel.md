---
layout: post
title: "Linear model"
date: "2019-05-15"
categories: Machine learning
tags: [Machine learning]
output:
  md_document:
    variant: markdown_github
---


## Model assumption

$$
  Y=X\beta+\epsilon.
$$

The three assumptions are

1. Linear relation is correct. $E(\epsilon)=0$ or $E(Y)=X\beta$.
2. Variance of $y$ is constant. $var(y_i)=\sigma$
3. Indepdendence. $cov(\epsilon_i,\epsilon_j)=0$.
4. (additional) Normal assmption.  $Y ~ N (X\beta, \sigma I)$

## Estimation

When 1 holds, $\hat\beta$ is unbiased for $\beta$.

When 1, 2, 3 holds, $\hat\beta$ is bease linear unbiased estimators for $\beta$. (Gauss–Markov theorem)

When 1, 2, 3 holds, $s^2=SSE/(n-k-1)$ is unbiased estimators for $\sigma$.  

When 4 holds, $\hat\beta$ is normal and have minimum variance among all unbiased estimators. (MLE)

## Model misspecification
If $cov(Y)=\sigma^2V$ but we mistakenly use $\hat\beta$, not BLUE, but still unbiased.

Underfitting reduces the variance of the estimate of $\hat\beta$  and $\hat E(y_0)$, but introduces biasd $\hat\beta$, $\hat E(y_0)$ and $s^2$(upward biased).

Overfitting increases the variance of the estimate of $\hat\beta$ and  $\hat E(y_0)$.

##Tests
Derived using informal methods based on finding sums of squares that have chi-square distributions and are independent.

Or likelihood ratio
$$
LR=\frac{max_{H0}L(\beta,\sigma)}{max_{Ha}L(\beta,\sigma)}
$$
Wald showed that under $H_0$, $-2ln LR$ is $\chi^2(v)$. In some cases, LR turns out to be t or F.
