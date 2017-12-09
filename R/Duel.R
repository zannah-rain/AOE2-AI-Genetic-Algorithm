#' @export
Duel <- function(ai_list) {
  if (length(ai_list$still_to_fight) >= 2) {
    print("Duelling!")
    print(paste("AI1:", length(ai_list$still_to_fight[[1]]$chromosomes), ai_list$still_to_fight[[1]]$mutation_rate))
    print(paste("AI2:", length(ai_list$still_to_fight[[2]]$chromosomes), ai_list$still_to_fight[[1]]$mutation_rate))
    folder <- "C:\\Program Files (x86)\\Steam\\SteamApps\\common\\Age2HD\\resources\\_common\\ai\\"
    write(print(ai_list$still_to_fight[[1]]), file.path(folder, "GeneticAI 1.per"))
    write(print(ai_list$still_to_fight[[2]]), file.path(folder, "GeneticAI 2.per"))
    winner <- readline("Who won: (1 / 2)")
    if (winner %in% c(1, 2)) {
      print("Adding winner to next generation gene pool!")
      print(paste((length(ai_list$still_to_fight) - 2) / 2, "matches until next generation!"))
      ai_list$won[[length(ai_list$won) + 1]] <- ai_list$still_to_fight[[as.numeric(winner)]]
      ai_list$still_to_fight <- ai_list$still_to_fight[-1]
      ai_list$still_to_fight <- ai_list$still_to_fight[-1]
    } else {
      if (length(ai_list$won) > 0) {
        ai_list$won[[length(ai_list$won) + 1]] <- ai_list$won[[length(ai_list$won)]]
      } else {
        ai_list$won[[length(ai_list$won) + 1]] <- AI(n = 500)
      }
      ai_list$still_to_fight <- ai_list$still_to_fight[-1]
      ai_list$still_to_fight <- ai_list$still_to_fight[-1]
    }
  } else {
    print("Breeding the winners!")
    saveRDS(ai_list, "previous_generation_backup.RDS")
    pairlist <- sample(Index(ai_list$won))
    for (i in Index(ai_list$won)) {
      children <- Breed(ai_list$won[[i]], ai_list$won[[pairlist[i]]])
      ai_list$still_to_fight[[length(ai_list$still_to_fight) + 1]] <-
        children[[1]]
      ai_list$still_to_fight[[length(ai_list$still_to_fight) + 1]] <-
        children[[2]]
    }
    ai_list$won <- list()
    ai_list$still_to_fight <- ai_list$still_to_fight[sample(Index(ai_list$still_to_fight))]
    print("Backing up this generation!")
    saveRDS(ai_list, "latest_generation_backup.RDS")
    print("Done! Don't forget to change things up to prevent overfitting!")
  }

  ai_list
}

