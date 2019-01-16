# attackP is a composite gene which bundles together attacking with checks around:
# A timer to reduce attack command spam & potentially allow the ai to rebuild its army before attacking again

#' @export
ActionString.attackP <- function(x) {
  paste0("(attack-now)",
         "\n\t(enable-timer 1 ", x[[1]][1], ")")
}

#' @export
ConditionString.attackP <- function(x) {
  "(timer-triggered 1)"
}

#' @export
Mutate.attackP <- function(x) {
  MutateTemplate(x,
                 list(max(25, as.numeric(x[[1]][1]) - 5):min(600, as.numeric(x[[1]][1]) + 5)))
}
