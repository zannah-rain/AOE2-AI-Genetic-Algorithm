#' @export
Game <- function(ai_list, n_players = 8, keep_top_n = 2, delete_bottom_n = 2) {
  n_contenders <- length(ai_list$still_to_fight)

  if (n_contenders > 0 && n_contenders < n_players) {
    print("Need more players to make n_players!")
    # Need more players
    extra_contenders_needed <- n_players - n_contenders

    n_victorious <- length(ai_list$won) # Number we can copy from the $won pool
    if (n_victorious > 0) {
      print("Creating extra players by copying next generation!")
      while (n_contenders < n_players) {
        if (n_victorious >= extra_contenders_needed) {
          # Can add all that are needed
          ai_list$still_to_fight[(n_contenders + 1):(n_players)] <- ai_list$won[1:extra_contenders_needed]
          n_contenders <- n_players
          extra_contenders_needed <- n_players - n_contenders
        } else {
          print("More copying needed!")
          # Can only get part way there (will have to copy some more than once)
          ai_list$still_to_fight[(n_contenders + 1):(n_contenders + n_victorious)] <- ai_list$won
          n_contenders <- n_contenders + n_victorious
          extra_contenders_needed <- n_players - n_contenders
        }
      }
    }
  }

  if (n_contenders >= n_players) {
    print("Fight!")
    folder <- "C:\\Program Files (x86)\\Steam\\SteamApps\\common\\Age2HD\\resources\\_common\\ai\\"
    for (i in 1:n_players) {
      print(paste0("Writing AI", i, ": ", length(ai_list$still_to_fight[[i]]$chromosomes), ", ", ai_list$still_to_fight[[i]]$mutation_rate))
      write(print(ai_list$still_to_fight[[i]]), file.path(folder, paste0("GeneticAI ", i, ".per")))
    }

    win_order <- readline("List numbers of AI in descending order of score (no delimiter)")
    win_order <- as.numeric(strsplit(win_order, character(0))[[1]])

    while (any(is.na(win_order)) || length(win_order) != n_players) {
      win_order <- readline("Retry: List numbers of AI in descending order of score (no delimiter)")
      win_order <- as.numeric(strsplit(win_order, character(0))[[1]])
    }

    print(paste0("Adding the top ", keep_top_n, " to the next generation"))
    l_won <- length(ai_list$won)
    ai_list$won[(l_won + 1):(l_won + keep_top_n)] <- ai_list$still_to_fight[win_order[1:keep_top_n]]

    print(paste0("Breeding the top ", n_players - delete_bottom_n, " AIs"))
    n_more_needed <- n_players - keep_top_n
    current_breed <- 1
    possible_y_pairings <- win_order[1:(length(win_order) - delete_bottom_n)]
    while (n_more_needed > 0) {
      # Pairs picked at random for now
      y_pairing <- Pick1(setdiff(possible_y_pairings, win_order[current_breed]))
      print(paste0("Breeding AI ", win_order[current_breed], " with AI ", y_pairing))

      children <- Breed(ai_list$still_to_fight[[win_order[current_breed]]], ai_list$still_to_fight[[y_pairing]])
      print(paste0("Resulting children have complexity: ", length(children[[1]]$chromosomes), ", ", length(children[[2]]$chromosomes)))
      ai_list$won[[length(ai_list$won) + 1]] <-
        children[[1]]
      ai_list$won[[length(ai_list$won) + 1]] <-
        children[[2]]

      current_breed <- current_breed + 1
      n_more_needed <- n_more_needed - 2
      possible_y_pairings <- setdiff(possible_y_pairings, y_pairing)
      if (n_more_needed < 0) {
        # 1 too many
        ai_list$won <- ai_list$won[-length(ai_list$won)]
      }
    }

    print("Removing players from still_to_fight list!")
    ai_list$still_to_fight <- ai_list$still_to_fight[-(1:n_players)]

    print(paste(ceiling(length(ai_list$still_to_fight) / n_players), "matches until next generation!"))
  } else { # None left to fight, restart!
    # Breeding happens after each game for large games, so just need to copy next generation to current!

    # ai_list$still_to_fight <- ai_list$won[sample(Index(ai_list$won))] # Scrambles them for next time too

    ai_list$still_to_fight <- ai_list$won
    # Instead of scrambling the whole list, just swap one from each set to the next one
    lower_group_boundaries <- seq(1, length(ai_list$still_to_fight), by = 8)
    upper_group_boundaries <- seq(8, length(ai_list$still_to_fight), by = 8)
    for (i in 1:length(lower_group_boundaries)) {
      if (runif(1) < 0.1) {
        swaps <- sample(0:7, 2)
        swap_left <- swaps[1] + lower_group_boundaries[i]
        right_index <- i + 1
        if (right_index > length(lower_group_boundaries))
          right_index <- 1
        swap_right <- swaps[2] + lower_group_boundaries[right_index]
        print(paste0("Swapping AIs: ", swap_left, ", ", swap_right))
        temp <- ai_list$still_to_fight[swap_left]
        ai_list$still_to_fight[swap_left] <- ai_list$still_to_fight[swap_right]
        ai_list$still_to_fight[swap_right] <- temp
      }
    }

    ai_list$won <- list()

    if (is.null(ai_list$generation)) {
      ai_list$generation <- 1
    } else {
      ai_list$generation <- ai_list$generation + 1
    }

    print("Saving this brave new generation!")
    saveRDS(ai_list, paste0("generation_", ai_list$generation, ".RDS"))
  }

  ai_list
}
