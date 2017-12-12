ActionString.attackNP <- function(x) {
  paste0("(attack-now)",
         "\n\t(enable-timer 1 ", x[[1]][2], ")")
}

ConditionString.attackNP <- function(x) {
  paste0("(military-population >= ", x[[1]][1], ")",
         "\n\t(timer-triggered 1)")
}

Mutate.attackNP <- function(x) {
  MutateTemplate(x,
                 list(max(1, x[[1]][1] - 5):min(250, x[[1]][1] + 5),
                      max(1, x[[1]][2] - 5):min(600, x[[1]][2] + 5)))
}
