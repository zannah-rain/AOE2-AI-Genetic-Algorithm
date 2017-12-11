ActionString.attackN <- function(x) {
  "(attack-now)"
}

ConditionString.attackN <- function(x) {
  paste0("(military-population >= ", x[[1]], ")")
}

Mutate.attackN <- function(x) {
  MutateTemplate(x, list(max(1, x[[1]] - 5), min(250, x[[1]] + 5)))
}

ActionString.buildGate <- function(x) {
  paste0("(build-gate ", x[[1]], ")")
}

ActionString.buildN <- function(x) {
  paste0("(build ", x[[1]][1], ")")
}

ActionString.buildForwardN <- function(x) {
  paste0("(build-forward ", x[[1]][1], ")")
}

ActionString.researchAge <- function(x) {
  paste0("(research ", x[[1]], ")")
}

ActionString.researchAgeWithEscrow <- function(x) {
  resources_needed <-
    ifelse(x[[1]] == "feudal-age",
           c("food"),
           c("food", "gold"))
  y <- paste(paste0("(release-escrow ", resources_needed, ")"), collapse = "\n\t")
  y <- paste0(y, "\n\t(research ", x[[1]], ")")
  y
}

ActionString.researchWithEscrow <- function(x) {
  y <- paste(paste0("(release-escrow ", RESOURCE_TYPES, ")"), collapse = "\n\t")
  y <- paste0(y, "\n\t(research ", x[[1]], ")")
  y
}

Mutate.researchWithEscrow <- function(x) {
  MutateTemplate(x, list(RESEARCH_ITEMS))
}

ConditionString.researchWithEscrow <- function(x) {
  paste0("(can-research-with-escrow ", x[[1]], ")")
}

Mutate.researchAgeWithEscrow <- function(x) {
  MutateTemplate(x, list(RESEARCH_ITEMS_AGES))
}

ConditionString.researchAgeWithEscrow <- function(x) {
  paste0("(can-research-with-escrow ", x[[1]], ")")
}

Mutate.researchAge <- function(x) {
  MutateTemplate(x, list(RESEARCH_ITEMS_AGES))
}

ConditionString.researchAge <- function(x) {
  paste0("(can-research ", x[[1]], ")")
}

ActionString.trainN <- function(x) {
  paste0("(train ", x[[1]][1], ")")
}

ActionString.trainBarracks <- function(x) {
  paste0("(train ", x[[1]], ")")
}

ActionString.trainDocks <- function(x) {
  paste0("(train ", x[[1]], ")")
}

ActionString.trainDocksN <- function(x) {
  paste0("(train ", x[[1]][1], ")")
}

ActionString.trainBarracksN <- function(x) {
  paste0("(train ", x[[1]][1], ")")
}

ActionString.buildWall <- function(x) {
  paste0("(build-wall ", paste(x[[1]], collapse = " "), ")")
}

ActionString.clearTributeMemory <- function(x) {
  paste0("(clear-tribute-memory ", paste(x[[1]], collapse = " "), ")")
}

Mutate.clearTributeMemory <- function(x) {
  MutateTemplate(x, list(PLAYER_NUMBERS, RESOURCE_TYPES))
}

ActionString.rebalanceGatherers <- function(x) {
  # Handles all 4 sn-*res*-gatherer-percentages at once
  percentages <- round(as.numeric(x[[1]][1:4]) * 100 / sum(x[[1]]))
  if (sum(percentages) != 100) {
    percentages[which.max(percentages)] <- 100 - sum(percentages[setdiff(1:4, which.max(percentages))])
  }
  paste0("(set-strategic-number sn-wood-gatherer-percentage ", percentages[1], ")",
         "\n\t(set-strategic-number sn-food-gatherer-percentage ", percentages[2], ")",
         "\n\t(set-strategic-number sn-gold-gatherer-percentage ", percentages[3], ")",
         "\n\t(set-strategic-number sn-stone-gatherer-percentage ", 100 - sum(percentages[1:3]), ")")
}

Mutate.rebalanceGatherers <- function(x) {
  MutateTemplate(x, list(0:100, 0:100, 0:100, 0:100))
}

ActionString.releaseEscrow <- function(x) {
  paste0("(release-escrow ", x[[1]], ")")
}

Mutate.releaseEscrow <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES))
}

ActionString.setEscrowPercentage <- function(x) {
  paste0("(set-escrow-percentage ", paste(x[[1]], collapse = " "), ")")
}

Mutate.setEscrowPercentage <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES, 0:100))
}

ActionString.tributeToPlayer <- function(x) {
  paste0("(tribute-to-player ", paste(x[[1]], collapse = " "), ")")
}

Mutate.tributeToPlayer <- function(x) {
  MutateTemplate(x, list(FRIENDLY_PLAYERS, RESOURCE_TYPES, 0:50))
}

ConditionString.buildGate <- function(x) {
  paste0("(can-build-gate ", x[[1]], ")")
}

ConditionString.buildN <- function(x) {
  y <- paste0("(can-build ", x[[1]][1], ")",
              "\n\t(building-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
  if (x[[1]][1] == "wonder") {
    # Wonder never useful in conquest
    y <- paste0(y, "\n\t(not (victory-condition conquest))")
  }
  y
}

ConditionString.buildForwardN <- function(x) {
  y <- paste0("(can-build ", x[[1]][1], ")",
              "\n\t(building-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
  if (x[[1]][1] == "wonder") {
    # Wonder never useful in conquest
    y <- paste0(y, "\n\t(not (victory-condition conquest))")
  }
  y
}

ConditionString.trainN <- function(x) {
  paste0("(can-train ", x[[1]][1], ")",
         "\n\t(unit-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
}

ConditionString.trainBarracksN <- function(x) {
  paste0("(can-train ", x[[1]][1], ")",
         "\n\t(unit-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
}

ConditionString.trainDocksN <- function(x) {
  paste0("(can-train ", x[[1]][1], ")",
         "\n\t(unit-type-count-total ", x[[1]][1], " < ", x[[1]][2], ")")
}

Mutate.buildN <- function(x) {
  MutateTemplate(x, list(BUILDINGS, 1:(as.numeric(x[[1]][2]) + 5)))
}

Mutate.buildForwardN <- function(x) {
  MutateTemplate(x, list(BUILDINGS, 1:(as.numeric(x[[1]][2]) + 3)))
}

Mutate.trainN <- function(x) {
  MutateTemplate(x, list(UNITS, 1:(as.numeric(x[[1]][2]) + 10)))
}

Mutate.trainBarracks <- function(x) {
  MutateTemplate(x, list(UNITS_BARRACKS))
}

Mutate.trainBarracksN <- function(x) {
  MutateTemplate(x, list(UNITS_BARRACKS, 1:(as.numeric(x[[1]][2]) + 10)))
}

Mutate.trainDocks <- function(x) {
  MutateTemplate(x, list(UNITS_DOCKS))
}

Mutate.trainDocksN <- function(x) {
  MutateTemplate(x, list(UNITS_DOCKS, 1:(as.numeric(x[[1]][2]) + 10)))
}

ConditionString.buildWall <- function(x) {
  paste0("(can-build-wall ", paste(x[[1]], collapse = " "), ")")
}

ConditionString.dropsiteMinDistance <- function(x) {
  paste0("(dropsite-min-distance ", paste(x[[1]], collapse = " "), ")")
}

Mutate.dropsiteMinDistance <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES, RELOPS, 0:50))
}

ConditionString.escrowAmount <- function(x) {
  paste0("(escrow-amount ", paste(x[[1]], collapse = " "), ")")
}

Mutate.escrowAmount <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES, RELOPS, 0:1500))
}

ConditionString.playersTribute <- function(x) {
  paste0("(players-tribute ", paste(x[[1]], collapse = " "), ")")
}

Mutate.playersTribute <- function(x) {
  MutateTemplate(x, list(PLAYER_NUMBERS, RESOURCE_TYPES, RELOPS, 0:1000))
}

ConditionString.playersTributeMemory <- function(x) {
  paste0("(players-tribute-memory ", paste(x[[1]], collapse = " "), ")")
}

Mutate.playersTributeMemory <- function(x) {
  MutateTemplate(x, list(PLAYER_NUMBERS, RESOURCE_TYPES, RELOPS, 0:1000))
}

ConditionString.resourceFound <- function(x) {
  paste0("(resource-found ", paste(x[[1]], collapse = " "), ")")
}

Mutate.resourceFound <- function(x) {
  MutateTemplate(x, list(RESOURCE_TYPES))
}

ConditionString.train <- function(x) {
  paste0("(can-train ", x[[1]], ")")
}
