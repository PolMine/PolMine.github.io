library(knitr)


markdown <- "kramdown"  

if (markdown == 'kramdown') {
    knitr::render_jekyll()
} else {
  knitr::render_markdown()
}



# input/output filenames are passed as two additional arguments to Rscript
a = commandArgs(TRUE)
d = gsub('^_|[.][a-zA-Z]+$', '', a[1])
knitr::opts_chunk$set(
  fig.path   = sprintf('figure/%s/', d),
  cache.path = sprintf('cache/%s/', d)
)



# set where you want to host the figures (I store them in my Dropbox Public
# folder, and you might prefer putting them in GIT)
if (Sys.getenv('USER') == 'blaette') {
  knitr::opts_chunk$set(fig.path = sprintf('%s/', gsub('^.+/', '', d)))
  knitr::opts_knit$set(
    base.dir = '~/Dropbox/Public/jekyll/',
    base.url = 'http://db.yihui.name/jekyll/'
  )
}
knitr::opts_knit$set(width = 70)
print("hello")

knitr::knit(a[1], a[2], quiet = TRUE, encoding = 'UTF-8', envir = .GlobalEnv)
