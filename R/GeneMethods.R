#' Constructor for the gene class.
#'
#' The conditions & actions of each rule in the AI is determined in a simple way by which genes are present.
#'
#' @param name The name of the subclass of the gene.
#' @param args Any parameters which influence the functioning of the gene.
#'
#' @return An object of class *name* which inherits from "gene"
#' @export
#'
#' @examples
#' # The buildN gene subclass adds the action to build the given building, provided the AI currently has less than N of that building already.
#' Gene(c("buildN", "action"), c("university", "1"))
#'
#' # The ConditionString and ActionString methods are used to actually generate the component rule text
#' ActionString(Gene(c("buildN", "action"), c("university", "1")))
#' ConditionString(Gene(c("buildN", "action"), c("university", "1")))
Gene <- function(name, args = NULL) {
  x <- list(args)
  class(x) <- c(name, "gene")
  x
}

#' Generic to generate the condition strings for individual genes or entire rules (chromosomes).
#'
#' The conditions & actions of each rule in the AI is determined in a simple way by which genes are present.
#'
#' @param x The given gene / chromosome (list of genes).
#'
#' @return A string
#' @export
#'
#' @examples
#' # The buildN gene subclass adds the action to build the given building, provided the AI currently has less than N of that building already.
#' Gene(c("buildN", "action"), c("university", "1"))
#'
#' # The ConditionString and ActionString methods are used to actually generate the component rule text
#' ActionString(Gene(c("buildN", "action"), c("university", "1")))
#' ConditionString(Gene(c("buildN", "action"), c("university", "1")))
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

#' Generic to generate the action strings for individual genes or entire rules (chromosomes).
#'
#' The conditions & actions of each rule in the AI is determined in a simple way by which genes are present.
#'
#' @param x The given gene / chromosome (list of genes).
#'
#' @return A string
#' @export
#'
#' @examples
#' # The buildN gene subclass adds the action to build the given building, provided the AI currently has less than N of that building already.
#' Gene(c("buildN", "action"), c("university", "1"))
#'
#' # The ConditionString and ActionString methods are used to actually generate the component rule text
#' ActionString(Gene(c("buildN", "action"), c("university", "1")))
#' ConditionString(Gene(c("buildN", "action"), c("university", "1")))
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
