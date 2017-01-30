library(polmineR)
library(data.table)
library(slam)

library(bigmemory)
library(bigalgebra)
library(biganalytics)


PLPRBT <- Corpus$new("PLPRBT")
PLPRBT$count(pAttribute = "word")
PLPRBT$stat <- PLPRBT$stat[count >= 50]
PLPRBT$stat <- PLPRBT$stat[-grep("^.*?(,|;|:|\\!|\\?|\\(|\\)|[|]|/|#|%|\\'|\\*|\\+).*?$", PLPRBT$stat[["word"]])]
PLPRBT$stat <- PLPRBT$stat[-grep("^.*?\\d+.*?$", PLPRBT$stat[["word"]])]
PLPRBT$stat <- PLPRBT$stat[-grep("^-", PLPRBT$stat[["word"]])]

PLPRBT_cooc <- cooccurrences("PLPRBT", keep = PLPRBT$stat[["word"]])
PLPRBT_Matrix <- as.sparseMatrix(PLPRBT_cooc)
rm(PLPRBT_cooc)
PLPRBT_Matrix2 <- as(PLPRBT_Matrix, "dgTMatrix")
rm(PLPRBT_Matrix)

library(text2vec)
GV <- GloVe$new(word_vectors_size = 50, vocabulary = PLPRBT$stat[["word"]], x_max = 10, learning_rate = .1) # in example learning_rate .25
GV$fit(x = PLPRBT_Matrix2, n_iter = 20)
vec <- GV$get_word_vectors()
rm(GV)
rm(PLPRBT_Matrix2)
gc()






library(biganalytics)
cp.dist <- apply(cp, 1, function(row) 1 - row)

foo <- hclust(cp, method = "ward.D")