# Collection of methods which allow for the functioning of more complicated genes which may include multiple conditions &/ actions

#' @export
ActionString.attackN <- function(x) {
  "(attack-now)"
}

#' @export
ConditionString.attackN <- function(x) {
  paste0("(military-population >= ", x[[1]], ")")
}

#' @export
Mutate.attackN <- function(x) {
  MutateTemplate(x, list(max(1, x[[1]] - 5):min(250, x[[1]] + 5)))
}

#' @export
ActionString.buildGate <- function(x) {
  paste0("(build-gate ", x[[1]], ")")
}

#' @export
ActionString.buildN <- function(x) {
  paste0("(build ", x[[1]][1], ")")
}

#' @export
ActionString.buildForwardN <- function(x) {
  paste0("(build-forward ", x[[1]][1], ")")
}

#' @export
ActionString.researchAge <- function(x) {
  paste0("(research ", x[[1]], ")")
}

#' @export
ActionString.researchAgeWithEscrow <- function(x) {
  resources_needed <-
    if(x[[1]] == "feudal-age") {
      "food"
    } else {
      c("food", "gold")
    }
  y <- paste(paste0("(release-escrow ", resources_needed, ")"), collapse = "\n\t")
  y <- paste0(y, "\n\t(research ", x[[1]], ")")
  y
}

#' @export
ActionString.researchWithEscrow <- function(x) {
  y <- paste(paste0("(release-escrow ", RESOURCE_TYPES, ")"), collapse = "\n\t")
  y <- paste0(y, "\n\t(research ", x[[1]], ")")
  y
}

#' @export
Mutate.researchWithEscrow <- function(x) {
  MutateTemplate(x, list(RESEARCH_ITEMS))
}

#' @export
ConditionString.researchWithEscrow <- function(x) {
  paste0("(can-research-with-escrow ", x[[1]], ")")
}

#' @export
Mutate.researchAgeWithEscrow <- function(x) {
  MutateTemplate(x, list(RESEARCH_ITEMS_AGES))
}

#' @export
ConditionString.researchAgeWithEscrow <- function(x) {
  paste0("(can-research-with-escrow ", x[[1]], ")")
}

#' @export
Mutate.researchAge <- function(x) {
  MutateTemplate(x, list(RESEARCH_ITEMS_AGES))
}

#' @export
ConditionString.researchAge <- function(x) {
  paste0("(can-research ", x[[1]], ")")
}

#' @export
ActionString.trainN <- function(x) {
  paste0("(train ", x[[1]][1], ")")
}

#' @export
ActionString.trainBarracks <- function(x) {
  paste0("(train ", x[[1]], ")")
}

#' @export
ActionString.trainDocks <- function(x) {
  paste0("(train ", x[[1]], ")")
}

#' @export
ActionString.trainDocksN <- function(x) {
  paste0("(train ", x[[1]][1], ")")
}

#' @export
ActionString.trainBarracksN <- function(x) {
  paste0("(train ", x[[1]][1], ")")
}

#' @export
ActionString.buildWall <- function(x) {
  paste0("(build-wall ", paste(x[[1]], collapse = " "), ")")
}

#' @export
ActionString.rebalanceGatherers <- function(x) {
  # Handles all 4 sn-*res*-gatherer-percentages at once
  percentages <- round(as.numeric(x[[1]][1:4]) * 100 / sum(x[[1]]))
  if (sum(percentages) != 100) {
    percentages[which.max(percentages)] <- 100 - sum(percentages[setdiff(1:4, which.max(percentages))])
  }
  paste0("(set-strategic-number sn-wood-gatherer-percentage ", percentages[1], ")",
         "\n\t(set-strategic-number sn-food-gatherer-percentage ", percentages[2], ")",
         "\n\t(set-strategic-number sn-gold-gatherer-percentage ", percentages[3], ")",
         "\n\t(set-strategic-number sn-stone-gatherer-percentage ", 100 - sum(percentages[1:3]), ")",
         "\n\t(set-escrow-percentage wood ", x[[1]][5], ")",
         "\n\t(set-escrow-percentage food ", x[[1]][6], ")",
         "\n\t(set-escrow-percentage gold ", x[[1]][7], ")",
         "\n\t(set-escrow-percentage stone ", x[[1]][8], ")")
}

#' @export
Mutate.rebalanceGatherers <- function(x) {
  MutateTemplate(x,
                 lapply(
                   x[[1]],
                   function(x) {
                     max(0, min(100, Pick1((x - 5):(x + 5))))
                   }
                 ))
}

#' @export
ActionString.releaseEscrow <- function(x) {
  paste0("(release-escrow ", x[[1]], ")")
}

#' @export
Mutate.releaseEscrow <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES))
}

#' @export
ActionString.setEscrowPercentage <- function(x) {
  paste0("(set-escrow-percentage ", paste(x[[1]], collapse = " "), ")")
}

#' @export
Mutate.setEscrowPercentage <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES, 0:100))
}

#' @export
ConditionString.buildGate <- function(x) {
  paste0("(can-build-gate ", x[[1]], ")")
}

#' @export
ConditionString.buildN <- function(x) {
  y <- paste0("(can-build ", x[[1]][1], ")",
              "\n\t(building-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
  if (x[[1]][1] == "wonder") {
    # Wonder never useful in conquest
    y <- paste0(y, "\n\t(not (victory-condition conquest))")
  }
  y
}

#' @export
ConditionString.buildForwardN <- function(x) {
  y <- paste0("(can-build ", x[[1]][1], ")",
              "\n\t(building-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
  if (x[[1]][1] == "wonder") {
    # Wonder never useful in conquest
    y <- paste0(y, "\n\t(not (victory-condition conquest))")
  }
  y
}

#' @export
ConditionString.trainN <- function(x) {
  paste0("(can-train ", x[[1]][1], ")",
         "\n\t(unit-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
}

#' @export
ConditionString.trainBarracksN <- function(x) {
  paste0("(can-train ", x[[1]][1], ")",
         "\n\t(unit-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
}

#' @export
ConditionString.trainDocksN <- function(x) {
  paste0("(can-train ", x[[1]][1], ")",
         "\n\t(unit-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
}

#' @export
Mutate.buildN <- function(x) {
  MutateTemplate(x, list(BUILDINGS, 1:(as.numeric(x[[1]][2]) + 5)))
}

#' @export
Mutate.buildForwardN <- function(x) {
  MutateTemplate(x, list(BUILDINGS, 1:(as.numeric(x[[1]][2]) + 3)))
}

#' @export
Mutate.trainN <- function(x) {
  MutateTemplate(x, list(UNITS, 1:(as.numeric(x[[1]][2]) + 10)))
}

#' @export
Mutate.trainBarracks <- function(x) {
  MutateTemplate(x, list(UNITS_BARRACKS))
}

#' @export
Mutate.trainBarracksN <- function(x) {
  MutateTemplate(x, list(UNITS_BARRACKS, 1:(as.numeric(x[[1]][2]) + 10)))
}

#' @export
Mutate.trainDocks <- function(x) {
  MutateTemplate(x, list(UNITS_DOCKS))
}

#' @export
Mutate.trainDocksN <- function(x) {
  MutateTemplate(x, list(UNITS_DOCKS, 1:(as.numeric(x[[1]][2]) + 10)))
}

#' @export
ConditionString.buildWall <- function(x) {
  paste0("(can-build-wall ", paste(x[[1]], collapse = " "), ")")
}

#' @export
ConditionString.dropsiteMinDistance <- function(x) {
  paste0("(dropsite-min-distance ", paste(x[[1]], collapse = " "), ")")
}

#' @export
Mutate.dropsiteMinDistance <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES, RELOPS, 0:50))
}

#' @export
ConditionString.escrowAmount <- function(x) {
  paste0("(escrow-amount ", paste(x[[1]], collapse = " "), ")")
}

#' @export
Mutate.escrowAmount <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES, RELOPS, 0:1500))
}

#' @export
ConditionString.resourceFound <- function(x) {
  paste0("(resource-found ", paste(x[[1]], collapse = " "), ")")
}

#' @export
Mutate.resourceFound <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES))
}

#' @export
ConditionString.train <- function(x) {
  paste0("(can-train ", x[[1]], ")")
}
