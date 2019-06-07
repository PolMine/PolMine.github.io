# Source: https://github.com/vasiliosz/jekyll-rstudio-demo/blob/master/build.R

library(knitr)

knitr::render_jekyll()

# input/output filenames are passed as two additional arguments to Rscript
a = commandArgs(TRUE)
d = gsub('^_|[.][a-zA-Z]+$', '', a[1])
# cat(d)
knitr::opts_chunk$set(
  fig.path   = sprintf('figure/%s/', d),
  cache.path = sprintf('cache/%s/', d)
)



# set where you want to host the figures (I store them in my Dropbox Public
# folder, and you might prefer putting them in GIT)
if (Sys.getenv('USER') %in% c('andreasblaette', 'blaette')) {
  knitr::opts_chunk$set(fig.path = sprintf('%s/', gsub('^.+/', '', d)))
  knitr::opts_knit$set(
    base.dir = '~/Lab/github/PolMine.github.io/assets/',
    base.url = '/assets/'
  )
}
knitr::opts_knit$set(width = 70)

knitr::knit(a[1], a[2], quiet = TRUE, encoding = 'UTF-8', envir = .GlobalEnv)
