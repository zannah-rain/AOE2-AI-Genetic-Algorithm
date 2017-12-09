ActionString.buildHouseN <- function(x) {
  "(build house)"
}

ConditionString.buildHouseN <- function(x) {
  paste0("(can-build house)",
         "\n\t(housing-headroom <= ", x[[1]][1], ")",
         "\n\t(population-headroom > 0)")
}

Mutate.buildHouseN <- function(x) {
  MutateTemplate(x, list(Pick1(max(0, x[[1]][1] - 5):min(70, x[[1]][1] + 5))))
}
