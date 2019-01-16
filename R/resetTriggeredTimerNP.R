
#' @export
ActionString.resetTriggeredTimerNP <- function(x) {
  paste0("(enable-timer ", x[[1]][1], " ", x[[1]][2], ")")
}

#' @export
ConditionString.resetTriggeredTimerNP <- function(x) {
  paste0("(timer-triggered ", x[[1]][1], ")")
}

#' @export
Mutate.resetTriggeredTimerNP <- function(x) {
  MutateTemplate(x,
                 list(x[[1]][1],
                      max(2, as.numeric(x[[1]][2]) - 10):min(600, as.numeric(x[[1]][2]) + 10)))
}
