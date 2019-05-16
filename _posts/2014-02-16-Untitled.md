---
layout: post
title: "R markdown"
date: 2019-05-15
categories: R
tags: [resources, jekyll]
image: http://gastonsanchez.com/images/blog/mathjax_logo.png
---

R Markdown
----------

**Step1.** Install the necessary packages.

``` r
if (!require('knitr')) {
  install.packages("knitr")
}
if (!require('devtools')) {
  install.packages("devtools")
}
if (!require('RWordPress')) {
  devtools::install_github(c("duncantl/XMLRPC", "duncantl/RWordPress"))
}
```

**Step2.** Run the following code. Please replace the `user`,`password` and `blog_url`! Note that WordpressLogin is small p. Some blogs used Capital p which is incorrect.

``` r
library(RWordPress)
library(knitr)

# Tell RWordPress how to set the user name, password, and URL for your WordPress site.
options(WordpressLogin = c(user = "password"), WordpressURL = "https://qili0547.wordpress.com/xmlrpc.php")

# Optional: If you want to see all of the knit2wp arguments that are possible, run this line.
?knit2wp

# If need be, set your working directory to the location where you stored the Rmd file.
setwd("~/Dropbox/Data_science")

# Tell knitr to create the html code and upload it to your WordPress site
knit2wp('Untitled.Rmd', title = 'Blog Posting from R Markdown to WordPress',publish = FALSE)
```
