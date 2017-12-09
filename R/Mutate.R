Mutate <- function(x, ...) {
  UseMethod("Mutate")
}

Mutate.ai <- function(x, ...) {
  x$mutation_rate <- boot::inv.logit(boot::logit(x$mutation_rate) + runif(1, min = -0.05, max = 0.05))
  for (i in Index(x$chromosomes)) {
    x$chromosomes[[i]] <- Mutate(x$chromosomes[[i]], rate = x$mutation_rate)
  }
  x
}

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
  } else if (x %in% PLAYER_NUMBERS) {
    return(playerNumber())
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
