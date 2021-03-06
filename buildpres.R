library(rmarkdown)

slides=list.files("slides","*.Rmd",full.names=TRUE)
for (f in slides) render(f,output_dir = "docs")

file.create("docs/.nojekyll")

library(bookdown)
setwd("handouts")
render_book(input="index.Rmd",
            output_dir = "../docs")
setwd("..")
