# attackNP is a composite gene which bundles together attacking with checks around:
# A timer to reduce attack command spam & potentially allow the ai to rebuild its army before attacking again
# How many military units the ai has

#' @export
ActionString.attackNP <- function(x) {
  paste0("(attack-now)",
         "\n\t(enable-timer 1 ", x[[1]][2], ")")
}

#' @export
ConditionString.attackNP <- function(x) {
  paste0("(military-population >= ", x[[1]][1], ")",
         "\n\t(timer-triggered 1)")
}

#' @export
Mutate.attackNP <- function(x) {
  MutateTemplate(x,
                 list(max(1, as.numeric(x[[1]][1]) - 5):min(250, as.numeric(x[[1]][1]) + 5),
                      max(25, as.numeric(x[[1]][2]) - 5):min(600, as.numeric(x[[1]][2]) + 5)))
}
