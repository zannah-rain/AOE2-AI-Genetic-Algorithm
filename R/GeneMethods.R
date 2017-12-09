Gene <- function(name, args = NULL) {
  x <- list(args)
  class(x) <- c(name, "gene")
  x
}

ConditionString <- function(x) {
  UseMethod("ConditionString")
}

ConditionString.chromosome <- function(x) {
  gene_strings <- sapply(x$genes, ConditionString)
  gene_strings <- gene_strings[!sapply(gene_strings, identical, NULL)]
  if (length(gene_strings) == 0) {
    return("\t(true)")
  }
  paste(paste0("\t", gene_strings), collapse = "\n")
}

ConditionString.condition <- function(x) {
  string <- paste0("(", head(class(x), 1))
  if (length(x[[1]]) > 0) {
    string <- paste0(string, " ", paste(x[[1]], collapse = " "))
  }
  paste0(string, ")")
}

ConditionString.action <- function(x) {
  NULL
}

ActionString <- function(x) {
  UseMethod("ActionString")
}

ActionString.chromosome <- function(x) {
  gene_strings <- sapply(x$genes, ActionString)
  gene_strings <- gene_strings[!sapply(gene_strings, identical, NULL)]
  if (length(gene_strings) == 0) {
    return("\t(do-nothing)")
  }
  paste(paste0("\t", gene_strings), collapse = "\n")
}

ActionString.action <- function(x) {
  string <- paste0("(", head(class(x), 1))
  if (length(x[[1]]) > 0) {
    string <- paste0(string, " ", paste(x[[1]], collapse = " "))
  }
  paste0(string, ")")
}

ActionString.condition <- function(x) {
  NULL
}
