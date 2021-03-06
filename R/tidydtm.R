#' @title Constructing DTM for AFICA data
#'
#' @description This function allows you to analyze document term matrix for latent structures
#' @param data text data frame or tibble with "description" as text data column name
#' @param sparse sparsity for which to trim document term matrix (must be between .001 and .999)
#' @keywords dtm
#' @export
#' @examples
#' tidyDTM(data, 0.98)

tidyDTM <- function(data, sparse){
if(!is.numeric(sparse)){
  stop ('sparse parameter must be numeric')
}

if(sparse >.001 | sparse < 0.999){
  sw <- add_row(stop_words, word = c("igf","ot", "ct"), lexicon = c("SMART", "SMART", "SMART"))

  #word counts
  word_counts <- data %>%
    unnest_tokens(word, description) %>%
    anti_join(sw) %>%
    count(document, word, sort = TRUE) %>%
    ungroup()

  #cast dtm
  dtm <- word_counts %>%
    cast_dtm(document, word, n)

  dtm$dimnames$Terms <- gsub("function", "functio", dtm$dimnames$Terms)

  dtm <- removeSparseTerms(dtm, sparse)

  rowTotals <- apply(dtm , 1, sum) #Find the sum of words in each Document
  dtm <- dtm[rowTotals> 0, ]           #remove all docs without words

  return(dtm)
}
  stop('sparse parameter must be between .001 and .999 (recommended between .8 and .999)')
}
