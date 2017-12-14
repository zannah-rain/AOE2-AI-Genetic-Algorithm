ActionString.attackP <- function(x) {
  paste0("(attack-now)",
         "\n\t(enable-timer 1 ", x[[1]][1], ")")
}

ConditionString.attackP <- function(x) {
  "(timer-triggered 1)"
}

Mutate.attackP <- function(x) {
  MutateTemplate(x,
                 list(max(25, as.numeric(x[[1]][1]) - 5):min(600, as.numeric(x[[1]][1]) + 5)))
}
