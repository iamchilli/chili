getwd()
setwd("~/GitHub/home/_rmd")
source("newpost.r")
library(reticulate)
use_python("C:/python3/python")

new_md_post(template_name = "2019-05-27-data-structure.Rmd", post_path = "../_posts")


changed = NULL
alt <- function (original) {
  for (i in 1:length(original)) {
    original[i]=original[i]*2
  }
  return(original)
}

original=c(1,2,3,4)
changed <- alt(original)
