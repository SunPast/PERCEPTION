#' Rank-normalize each column of a metrix
#'
#' Convert each column to ranks and divide by column length.
#'
#' @param mat A numeric matrix. Rows = genes, columns = cells.
#' @return A rank-normalized matrix.
#' @export
rank_normalization_mat <- function(mat){
  apply(
    mat,
    2,
    function(x) rank(x, ties.method = "average")/length(x))
}
