
#' @export
ActionString.buildFarmNMO <- function(x) {
  "(build farm)"
}

#' @export
ConditionString.buildFarmNMO <- function(x) {
  paste0("(can-build farm)",
         "\n\t(idle-farm-count <= ", x[[1]][1], ")",
         "\n\t(food-amount <= ", x[[1]][2], ")",
         "\n\t(wood-amount >= ", x[[1]][3], ")")
}

#' @export
Mutate.buildFarmNMO <- function(x) {
  MutateTemplate(x,
                 list(Pick1(max(0, x[[1]][1] - 5):min(30, x[[1]][1] + 5)),
                      Pick1(max(0, x[[1]][2] - 50):min(30, x[[1]][2] + 50)),
                      Pick1(max(0, x[[1]][3] - 50):min(30, x[[1]][3] + 50))))
}
