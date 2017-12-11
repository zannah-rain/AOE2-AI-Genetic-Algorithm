#' @export
GenerateActions <- function(n) {
  sample(
    list(
      Gene(c("attack-now", "action")),
      Gene(c("attackN", "action"), Pick1(1:100)),
      # Gene(c("build", "action"), building()),
      Gene(c("buildGate", "action"), perimeter()),
      Gene(c("buildN", "action"), c(building(), Pick1(1:5))),
      Gene(c("buildForwardN", "action"), c(building(), Pick1(1:3))),
      Gene(c("buildHouseN", "action"), Pick1(1:30)),
      Gene(c("build-wall", "action"), c(perimeter(), wallType())),
      # Gene(c("buy-commodity", "action"), commodity()),
      Gene(c("buyCommodityNMO", "action"), c(commodity(), Pick1(0:1000), Pick1(0:200), Pick1(100:3000))),
      Gene(c("disable-self", "action")),
      Gene(c("disable-self", "action")),
      Gene(c("disable-timer", "action"), timerId()),
      Gene(c("enable-timer", "action"), c(timerId(), Pick1(1:600))), # I think the docs are wrong on this, also needs time to set it to
      Gene(c("enable-wall-placement", "action"), perimeter()),
      Gene(c("generate-random-number", "action"), Pick1(1:10)),
      Gene(c("releaseEscrow", "action"), resourceType()),
      Gene(c("research", "action"), researchItem()),
      Gene(c("researchWithEscrow", "action"), researchItem()),
      Gene(c("researchAgeWithEscrow", "action"), Pick1(RESEARCH_ITEMS_AGES)),
      Gene(c("researchAge", "action"), Pick1(RESEARCH_ITEMS_AGES)),
      # Gene(, "resign", "action")), not funny in practice lolol
      # Gene(c("sell-commodity", "action"), commodity()),
      Gene(c("sellCommodityNMO", "action"), c(commodity(), Pick1(0:5000), Pick1(0:300), Pick1(0:800))),
      Gene(c("set-difficulty-parameter", "action"), c(difficultyParameter(), Pick1(0:100))),
      Gene(c("setEscrowPercentage", "action"), c(resourceType(), Pick1(0:100))),
      Gene(c("set-goal", "action"), c(goalId(), Pick1(0:10))),
      Gene(c("set-shared-goal", "action"), c(sharedGoalId(), Pick1(0:10))),
      Gene(c("set-signal", "action"), signalId()),
      # Gene(, "set-stance", "action"), playerNumber(), diplomaticStance()),
      Gene(c("set-strategic-number", "action"), strategicNumberValue()),
      Gene(c("set-strategic-number", "action"), strategicNumberValue()),
      Gene(c("spy", "action")),
      Gene(c("train", "action"), unit()),
      Gene(c("trainN", "action"), c(unit(), Pick1(1:30))),
      Gene(c("trainBarracks", "action"), Pick1(UNITS_BARRACKS)),
      Gene(c("trainBarracksN", "action"), c(Pick1(UNITS_BARRACKS), Pick1(1:30))),
      Gene(c("trainDocks", "action"), Pick1(UNITS_DOCKS)),
      Gene(c("trainDocksN", "action"), c(Pick1(UNITS_DOCKS), Pick1(1:30))),
      Gene(c("rebalanceGatherers", "action"), c(Pick1(0:100), Pick1(0:100), Pick1(0:100), Pick1(0:100))),
      Gene(c("tributeToPlayer", "action"), c(Pick1(FRIENDLY_PLAYERS), resourceType(), Pick1(1:50)))
    ),
    n
  )
}

