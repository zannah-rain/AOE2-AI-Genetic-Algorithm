#' @export
Chromosome <- function(genes, priority) {
  x <- list()
  x$genes <- genes
  x$priority <- priority
  class(x) <- "chromosome"
  x
}

#' @export
RandomChromosome <- function(n_conditions = Pick1(1:4),
                             n_actions = Pick1(1:3)) {
  current_attempt <-
    Chromosome(genes = append(GenerateConditions(n_conditions), GenerateActions(n_actions)),
               priority = GeneratePriority())
  class(current_attempt) <- "chromosome"
  return(current_attempt)
}

#' @export
GeneratePriority <- function() {
  runif(1)
}

#' @export
print.chromosome <- function(x) {
  condition_strings <- ConditionString(x)
  actions_strings <- ActionString(x)

  paste0(
    "(defrule\n",
    ConditionString(x),
    "\n\t=>\n",
    ActionString(x),
    "\n)"
  )
}
