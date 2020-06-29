Feature Request | Sentence Boundary instead of left and right (issue #87)

library(polmineR)
library(cwbtools)
use("GermaParl")

pos <- corpus("GERMAPARL") %>% get_token_stream(p_attribute = "pos")
cpos <- seq.int(from = 0L, to = length(pos) - 1L)

sentence_end <- grep("\\$\\.", pos)
cpos_sentences <- cut(x = cpos, breaks = c(0L, sentence_end), include.lowest = TRUE, right = FALSE)
y <- lapply(split(x = cpos, f = cpos_sentences), function(cpos) c(cpos[1L], cpos[length(cpos)]))

m <- matrix(data = unlist(y), ncol = 2L, byrow = TRUE)
df <- data.frame(m)
colnames(df) <- c("cpos_left", "cpos_right")
df[["sentence"]] <- seq.int(from = 0L, to = nrow(df) - 1L)
head(df)

s_attribute_encode(
  values = as.character(df[["sentence"]]),
  data_dir = cwbtools::registry_file_parse(corpus = "GERMAPARL")[["home"]],
  s_attribute = "s",
  corpus = "GERMAPARL",
  region_matrix = as.matrix(df[,c("cpos_left", "cpos_right")]),
  method = "R",
  registry_dir = registry(),
  encoding = cwbtools::registry_file_parse(corpus = "GERMAPARL")[["properties"]][["charset"]],
  delete = TRUE,
  verbose = TRUE
)

k <- kwic("GERMAPARL", query = "Integration", left = 30, right = 30, boundary = "s")



corpus("GERMAPARL") %>% context(query = "Integration", left = "s", right = "s") %>% kwic()

