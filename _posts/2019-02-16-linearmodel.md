---
layout: post
title: "Linear model"
date: 2019-05-15
categories: Machine learning
tags: [statistics, machine learning]
image: http://gastonsanchez.com/images/blog/mathjax_logo.png
---

Model assumption
----------------

*Y* = *X**β* + *ϵ*.

The three assumptions are

1.  Linear relation is correct. *E*(*ϵ*)=0 or *E*(*Y*)=*X**β*.
2.  Variance of *y* is constant. *v**a**r*(*y*<sub>*i*</sub>)=*σ*
3.  Indepdendence. *c**o**v*(*ϵ*<sub>*i*</sub>, *ϵ*<sub>*j*</sub>)=0.
4.  (additional) Normal assmption. *Y* *N*(*X**β*, *σ**I*)

Estimation
----------

When 1 holds, $\\hat\\beta$ is unbiased for *β*.

When 1, 2, 3 holds, $\\hat\\beta$ is bease linear unbiased estimators for *β*. (GaussâMarkov theorem)

When 1, 2, 3 holds, *s*<sup>2</sup> = *S**S**E*/(*n* − *k* − 1) is unbiased estimators for *σ*.

When 4 holds, $\\hat\\beta$ is normal and have minimum variance among all unbiased estimators. (MLE)

Model misspecification
----------------------

If *c**o**v*(*Y*)=*σ*<sup>2</sup>*V* but we mistakenly use $\\hat\\beta$, not BLUE, but still unbiased.

Underfitting reduces the variance of the estimate of $\\hat\\beta$ and $\\hat E(y\_0)$, but introduces biasd $\\hat\\beta$, $\\hat E(y\_0)$ and *s*<sup>2</sup>(upward biased).

Overfitting increases the variance of the estimate of $\\hat\\beta$ and $\\hat E(y\_0)$.

Tests
-----

Derived using informal methods based on finding sums of squares that have chi-square distributions and are independent.

Or likelihood ratio
$$
LR=\\frac{max\_{H0}L(\\beta,\\sigma)}{max\_{Ha}L(\\beta,\\sigma)}
$$
 Wald showed that under *H*<sub>0</sub>, −2*l**n**L**R* is *χ*<sup>2</sup>(*v*). In some cases, LR turns out to be t or F.
