#' Combine two ai's and get two children
#' @export
Breed <- function(x = NULL, y = NULL) {
  children <- list()

  mutation_rng <- round(runif(1)) + 1

  chromosome_split_x <- runif(length(x$chromosomes)) >= 0.5 # Which of x chromosomes go to child 1
  chromosome_split_y <- runif(length(y$chromosomes)) >= 0.5

  children[[1]] <- AI(
    chromosomes = c(x$chromosomes[chromosome_split_x], y$chromosomes[chromosome_split_y]),
    mutation_rate = c(x$mutation_rate, y$mutation_rate)[mutation_rng]
  )
  children[[2]] <- AI(
    chromosomes = c(x$chromosomes[!chromosome_split_x], y$chromosomes[!chromosome_split_y]),
    mutation_rate = c(x$mutation_rate, y$mutation_rate)[setdiff(1:2, mutation_rng)]
  )

  children[[1]] <- Mutate(children[[1]])
  children[[2]] <- Mutate(children[[2]])
  return(children)
}
