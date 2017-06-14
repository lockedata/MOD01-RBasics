library(rmarkdown)
slides=list.files("pres","*.Rmd",full.names=TRUE)

for (f in slides) render(f,output_dir = "docs")


library(bookdown)
setwd("handouts")
render_book(output_format = bookdown::html_book(), output_dir = "../docs")
setwd("..")
