#' Generic to apply random mutation to various genetic objects.
#'
#' @param x An ai, chromosome or gene.
#' @param ... Other arguments to the specific method.
#'
#' @return A (possibly) mutated version of the given object x.
#' @export
#'
#' @examples
#' a <- Gene(c("buildN", "action"), c("university", "1"))
#' b <- lapply(1:25, function(x) {Mutate(a)})
#' unique(sapply(b, ConditionString))
Mutate <- function(x, ...) {
  UseMethod("Mutate")
}

#' Apply random mutation to a complete ai (list of chromosomes along with a mutation rate).
#'
#' The mutation rate itself is first changed slightly (randomly).
#' Mutation is then applied to each chromosome in the ai with the given mutation rate.
#'
#' @param x An ai.
#' @param ... Not used.
#'
#' @return A (possibly) mutated version of the given ai x.
#' @export
Mutate.ai <- function(x, ...) {
  x$mutation_rate <- boot::inv.logit(boot::logit(x$mutation_rate) + runif(1, min = -0.05, max = 0.05))
  for (i in Index(x$chromosomes)) {
    x$chromosomes[[i]] <- Mutate(x$chromosomes[[i]], rate = x$mutation_rate)
  }
  x
}

#' Apply random mutation to a complete chromosome (list of genes along with a priority).
#'
#' @param x A chromosome.
#' @param rate The rate of mutation to apply (probability to apply any mutation).
#' @param ... Not used.
#'
#' @return A (possibly) mutated version of the chromosome x.
#' @export
Mutate.chromosome <- function(x, rate, ...) {
  if (runif(1) < rate) {
    mutation <- Pick1(c("delete-gene",
                        "delete-gene",
                        "add-action",
                        "add-condition",
                        "change-priority",
                        "change-priority",
                        "change-priority",
                        "change-priority",
                        "mutate-gene",
                        "mutate-gene",
                        "mutate-gene",
                        "mutate-gene",
                        "randomise"))
    if (mutation == "change-priority") {
      if (x$priority <= 0) {
        x$priority <- 0.01
      }
      if (x$priority >= 1) {
        x$priority <- 0.99
      }
      x$priority <-
        boot::inv.logit(boot::logit(x$priority) + runif(n = 1, min = -0.5, max = 0.5))
    } else if (mutation == "delete-gene") {
      if (length(x$genes) > 2) {
        x$genes <- x$genes[-Pick1(Index(x$genes))]
      }
    } else if (mutation == "add-action") {
      x$genes[[length(x$genes) + 1]] <- GenerateActions(1)[[1]]
    } else if (mutation == "add-condition") {
      x$genes[[length(x$genes) + 1]] <- GenerateConditions(1)[[1]]
    } else if (mutation == "mutate-gene") {
      if (length(x$genes) > 0) {
        which_to_mutate <- Pick1(Index(x$genes))
        x$genes[[which_to_mutate]] <- Mutate(x$genes[[which_to_mutate]])
      }
    } else if (mutation == "randomise") {
      x <- RandomChromosome()
    }
  }
  x
}

#' Apply random mutation to an individual gene.
#'
#' A random parameter within the gene is selected to undergo mutation via MutateItem.
#'
#' @param x A gene.
#' @param ... Not used.
#'
#' @return A mutated version of the given gene.
#' @export
#'
#' @examples
#' a <- Gene(c("buildN", "action"), c("university", "1"))
#' b <- lapply(1:25, function(x) {Mutate(a)})
#' unique(sapply(b, ConditionString))
Mutate.gene <- function(x, ...) {
  if (length(x[[1]]) == 0) {
    return(x)
  }
  which_to_mutate <- Pick1(Index(x[[1]]))
  x[[1]][which_to_mutate] <- MutateItem(x[[1]][which_to_mutate])
  x
}

MutateTemplate <- function(x, allowed_values) {
  # allowed_values a list of possible substitutions for each element
  if (length(x[[1]]) == 0) {
    return(x)
  }
  which_to_mutate <- Pick1(Index(x[[1]]))
  x[[1]][which_to_mutate] <- Pick1(allowed_values[[which_to_mutate]])
  x
}

#' Randomly pick from compatible values.
MutateItem <- function(x) {
  if (x %in% AGES) {
    return(age())
  } else if (x %in% RELOPS) {
    return(relop())
  } else if (x %in% UNITS) {
    return(unit())
  } else if (x %in% BUILDINGS) {
    return(building())
  } else if (x %in% RESEARCH_ITEMS) {
    return(researchItem())
  } else if (x %in% WALL_TYPES) {
    return(wallType())
  } else if (x %in% VICTORY_CONDITIONS) {
    return(victoryCondition())
  } else if (x %in% STARTING_RESOURCES) {
    return(startingResources())
  } else if (x %in% FULL_PLAYER_NUMBERS) {
    return("every-enemy")
  } else if (x %in% MAP_TYPES) {
    return(mapType())
  } else if (x %in% DIPLOMATIC_STANCES) {
    return(diplomaticStance())
  } else if (x %in% DIFFICULTY_PARAMETERS) {
    return(difficultyParameter())
  } else if (x %in% COMMODITIES) {
    return(commodity())
  } else if (x %in% RESOURCE_TYPES) {
    return(resourceType())
  }
  x
}
