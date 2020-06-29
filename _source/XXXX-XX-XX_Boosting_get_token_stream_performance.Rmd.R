library(polmineR)
library(microbenchmark)
use("GermaParl")

coi <- "MIGPARL"

decode1 <- function(x, p_attribute, share = 1.0){
  obj <- corpus(x)
  lexfile <- file.path(obj@data_dir, sprintf("%s.lexicon", p_attribute), fsep = "/")
  lexicon <- readBin(con = lexfile, what = character(), n = file.info(lexfile)$size)
  Encoding(lexicon) <- obj@encoding
  lexicon <- stringi::stri_encode(lexicon, from = obj@encoding, to = localeToCharset())
  max_cpos <- as.integer(floor((size(obj) - 1L) * share))
  ids <- RcppCWB::cl_cpos2id(corpus = obj@corpus, p_attribute = p_attribute, registry = registry(), cpos = 0L:max_cpos)
  lexicon[ids + 1L]
}

decode2 <- function(x, p_attribute, share = 1.0){
  max_cpos <- as.integer(floor((size(x) - 1L) * share))
  y <- RcppCWB::cl_cpos2str(corpus = x, p_attribute = p_attribute, registry = registry(), cpos = 0L:max_cpos)
  Encoding(y) <- encoding(x)
  stringi::stri_encode(y, from = encoding(x), to = localeToCharset())
}

range <- c(seq(from = 0.01, to = 0.1, by = 0.01), seq(from = 0.2, to = 0.4, by = 0.1))
df <- do.call(rbind, lapply(
  range,
  function(x){
    message("Share of the corpus to decode: ", x)
    message("... benchmarking decode1()")
    mb1 <- microbenchmark(decode1(coi, "word", share = x), times = 3)
    message("... benchmarking decode2()")
    mb2 <- microbenchmark(decode2(coi, "word", share = x), times = 3)
    data.frame(share = x, avg1 = mean(mb1$time)/1000000000, avg2 = mean(mb2$time)/1000000000)
  }
))

beepr::beep(5)

plot(
  x = df[["share"]], y = df[["avg2"]], type = "n",
  xlim = c(0,max(range)), ylim = c(0, max(c(max(df[["avg1"]]), max(df[["avg2"]])))),
  xlab = "Share of the corpus decoded", ylab = "time (in seconds)",
  main = "Time to decode token stream"
)
lines(x = df[["share"]], y = df[["avg1"]], lwd = 2, lty = "dashed", col = "red")
lines(x = df[["share"]], y = df[["avg2"]], lwd = 2, lty = "dotdash", col = "blue")
abline(v = 0.05, col = "darkgrey")
legend(
  x = "topleft",
  legend = c("method1", "method2"),
  lty = c("dashed", "dotdash"),
  col = c("red", "blue"),
  lwd = 2
)