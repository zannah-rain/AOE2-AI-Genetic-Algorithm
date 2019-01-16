# buildHouseN is a composite gene which bundles together building houses with checks around:
# How much population headroom you have

#' @export
ActionString.buildHouseN <- function(x) {
  "(build house)"
}

#' @export
ConditionString.buildHouseN <- function(x) {
  paste0("(can-build house)",
         "\n\t(housing-headroom <= ", x[[1]][1], ")",
         "\n\t(population-headroom > 0)")
}

#' @export
Mutate.buildHouseN <- function(x) {
  MutateTemplate(x, list(Pick1(max(0, x[[1]][1] - 5):min(70, x[[1]][1] + 5))))
}
