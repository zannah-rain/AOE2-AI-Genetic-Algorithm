# Only needs running once
#' @export
InitialiseFiles <- function() {
  folder <- AOE2_AI_FOLDER

  for (i in 1:8) {
    write("", file.path(folder, paste0("GeneticAI ", i, ".ai")))
    write(print(AI(n = 50)), file.path(folder, paste0("GeneticAI ", i, ".per")))
  }
}

#' @export
InitialiseAIs <- function(n = 10) {
  ai_list <- list()
  ai_list$still_to_fight <- list()
  ai_list$won <- list()
  for (i in 1:n) {
    ai_list$still_to_fight[[i]] <- GenerateChromosomes(n = 1000)
  }
  ai_list
}
