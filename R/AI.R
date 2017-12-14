# The AI object is literally just a list of chromosomes

#' Constructor function for AI objects (collections of chromosomes)
#' @export
AI <- function(chromosomes = NULL, mutation_rate = runif(1, min = 0.001, max = 0.1), n = 1000) {
  if (is.null(chromosomes)) {
    chromosomes <- list()
    for (i in 1:n) {
      chromosomes[[i]] <- RandomChromosome()
    }
  }
  ai <- list(
    chromosomes = chromosomes,
    mutation_rate = mutation_rate
  )
  class(ai) <- "ai"
  ai
}

#' @export
print.ai <- function(ai) {
  x <- ""
  priorities <- sapply(ai$chromosomes, "[[", "priority")
  priority_order <- order(priorities, decreasing = TRUE)
  printed_rules <- sapply(ai$chromosomes, print)
  printed_rules <- printed_rules[priority_order]
  printed_rules <-
    c("(defrule\n\t(true)\n\t=>\n\t(enable-timer 1 1)\n\t(disable-self)\n)",
      INITIALISATION_RULES,
      printed_rules)
  paste(printed_rules, collapse = "\n")
}
