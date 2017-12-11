Index <- function(x, backwards = FALSE) {
  length <- length(x)
  if (length == 0)
    return(NULL)
  if (backwards) {
    return(length:1)
  }
  1:length
}
