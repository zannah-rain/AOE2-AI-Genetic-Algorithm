# As the values acceptable vary widely with these, supplying both together is easier

#' @export
strategicNumberValue <- function() {
  sample(
    list(
      c(215, Pick1(0:1)), # "SNAllowDiplomacyChangeOnAllyAttack"
      c(217, Pick1(0:1)), # "SNAllowDiplomacyChangeOnTribute"
      c(47, Pick1(0:3)), # "SNAttackCoordination"
      c(48, Pick1(0:100)), # "SNAttackResponseSeparationTime"
      c(46, Pick1(0:100)), # "SNAttackSeparationTime"
      c(208, Pick1(0:1)), # SNAutoBuildDocks
      c(205, Pick1(0:1)), # "SNAutoBuildDropsites"
      c(206, Pick1(0:1)), # "SNAutoBuildFarms"
      c(209, Pick1(0:1)), # "SNAutoBuildFishingBoats"
      c(180, Pick1(0:1)), # "SNAutoBuildHouses"
      c(207, Pick1(0:1)), # "SNAutoBuildTowers"
      c(210, Pick1(0:1)), # "SNAutoBuildTransports"
      c(223, Pick1(0:1)), # "SNAutoBuildWarships"
      c(155, Pick1(1:10)), # "SNBuildPlanDivisions"
      c(186, Pick1(0:600)), # "SNCoopDemandTributeInterval"
      c(187, Pick1(0:1000)), # "SNCoopDemandTributeMaximum"
      c(121, Pick1(0:1)), # "SNDefendImportantGroupLeaders"
      c(212, Pick1(0:10)), # "SNDesiredNumberDocks"
      c(65, Pick1(0:5)), # "SNDesiredNumberFishEscorts"
      c(213, Pick1(0:100)), # "SNDesiredNumberFishingBoats"
      c(64, Pick1(0:100)), # "SNDesiredNumberTradeEscorts"
      c(66, Pick1(0:100)), # "SNDesiredNumberTransportEscorts"
      c(214, Pick1(0:100)), # "SNDesiredNumberTransports"
      c(224, Pick1(0:100)), # "SNDesiredNumberWarships"
      c(40, Pick1(0:1)), # "SNGroupFillMethod"
      c(152, Pick1(0:100)), # "SNHouseOverage"
      c(71, Pick1(0:1)), # "SNLockAttackAndAttackResponse"
      c(220, Pick1(0:100)), # "SNMaxFarms"
      c(151, Pick1(0:50)), # "SNMaxGranaries"
      c(190, Pick1(0:10000)), # "SNMaximumFood"
      c(193, Pick1(0:10000)), # "SNMaximumGold"
      c(174, Pick1(0:30)), # "SNMaximumHousesBeforeDropsites"
      c(192, Pick1(0:10000)), # "SNMaximumStone"
      c(191, Pick1(0:10000)), # "SNMaximumWood"
      c(150, Pick1(0:100)), # "SNMaxStoragePits"
      c(170, Pick1(0:1000)), # "SNMinimumFood"
      c(173, Pick1(0:1000)), # "SNMinimumGold"
      c(172, Pick1(0:1000)), # "SNMinimumStone"
      c(171, Pick1(0:1000)), # "SNMinimumWood"
      c(147, Pick1(0:20)), # "SNMostNeededResourceLookAhead"
      c(84, Pick1(0:10)), # "SNNumberWallGates"
      c(31, Pick1(1:100)), # "SNPercentDeathRetreat"
      c(30, Pick1(1:100)), # "SNPercentHealthRetreat"
      c(91, Pick1(1:100)), # "SNPercentUnitHealthRetreat"
      c(161, Pick1(0:4)), # "SNRequiredFirstBuilding"
      c(49, Pick1(0:3)), # "SNRetreatAfterTargetDestroyed"
      c(54, Pick1(0:7)), # "SNRuinsDefendPriority"
      c(85, Pick1(0:100)), # "SNSizeWallGates"
      c(130, Pick1(0:1)), # "SNTributeFailureOutcome"
      c(133, Pick1(0:1)), # "SNTributeRevokeOnAttack"
      c(129, Pick1(0:1)), # "SNTributeSuccessOutcome"
      c("sn-blot-exploration-map", Pick1(0:1)),
      c("sn-cap-civilian-builders", Pick1(7:100)),
      c("sn-maximum-food-drop-distance", Pick1(0:100)),
      c("sn-maximum-gaia-attack-response", Pick1(0:20)),
      c("sn-maximum-gold-drop-distance", Pick1(0:100)),
      c("sn-maximum-hunt-drop-distance", Pick1(0:100)),
      c("sn-maximum-stone-drop-distance", Pick1(0:100)),
      c("sn-maximum-wood-drop-distance", Pick1(0:100)),
      c("sn-max-retask-gather-amount", Pick1(0:500)),
      c("sn-max-skips-per-attempt", Pick1(0:20)),
      c("sn-mill-max-distance", Pick1(0:100)),
      c("sn-minimum-amount-for-trading", Pick1(0:10000)),
      c("sn-minimum-boar-hunt-group-size", Pick1(0:15)),
      c("sn-minimum-boat-attack-group-size", Pick1(0:50)),
      c("sn-minimum-boat-defend-group-size", Pick1(0:50)),
      c("sn-minimum-boat-explore-group-size", Pick1(0:25)),
      c("sn-minimum-civilian-explorers", Pick1(0:5)),
      c("sn-minimum-defend-group-size", Pick1(0:50)),
      c("sn-minimum-peace-like-level", Pick1(0:100)),
      c("sn-minimum-water-body-size-for-dock", Pick1(0:1500)),
      c("sn-number-enemy-objects-required", Pick1(0:20)),
      c("sn-number-explore-groups", Pick1(0:10)),
      c("sn-number-forward-builders", Pick1(0:30)),
      c("sn-percentage-explore-exterminators", Pick1(0:100)),
      c("sn-percent-attack-boats", Pick1(0:100)),
      c("sn-percent-attack-soldiers", Pick1(0:100)),
      c("sn-percent-civilian-builders", Pick1(0:100)),
      c("sn-percent-civilian-explorers", Pick1(0:100)),
      c("sn-percent-civilian-gatherers", Pick1(0:100)),
      c("sn-percent-enemy-sighted-response", Pick1(0:100)),
      c("sn-percent-exploration-required", Pick1(0:100)),
      c("sn-percent-half-exploration", Pick1(0:100)),
      c("sn-random-placement-factor", Pick1(0:100)),
      c("sn-relic-defend-priority", Pick1(0:7)),
      c("sn-relic-return-distance", Pick1(0:50)),
      c("sn-required-forest-tiles", Pick1(0:50)),
      c("sn-retask-gather-amount", Pick1(0:40)),
      c("sn-sentry-distance", Pick1(0:25)),
      c("sn-sentry-distance-variation", Pick1(0:10)),
      c("sn-stone-defend-priority", Pick1(0:7)),
      c("sn-target-evaluation-ally-proximity", Pick1(0:100)),
      c("sn-target-evaluation-attack-attempts", Pick1(0:100)),
      c("sn-target-evaluation-boat", Pick1(0:100)),
      c("sn-target-evaluation-continent", Pick1(0:100)),
      c("sn-target-evaluation-damage-capability", Pick1(0:100)),
      c("sn-target-evaluation-hitpoints", Pick1(0:100)),
      c("sn-target-evaluation-in-progress", Pick1(0:100)),
      c("sn-target-evaluation-kills", Pick1(0:100)),
      c("sn-target-evaluation-randomness", Pick1(0:100)),
      c("sn-target-evaluation-range", Pick1(0:100)),
      c("sn-target-evaluation-rof", Pick1(0:100)),
      c("sn-target-evaluation-siege-weapon", Pick1(0:100)),
      c("sn-target-evaluation-time-kill-ratio", Pick1(0:100)),
      c("sn-total-number-explorers", Pick1(0:10)),
      c("sn-town-defend-priority", Pick1(0:7)),
      c("sn-track-player-history", Pick1(0:1)),
      c("sn-use-by-type-max-gathering", Pick1(0:1)),
      c("sn-wood-dropsite-distance", Pick1(3:100)),
      c("sn-food-dropsite-distance", Pick1(3:100)),
      c("sn-gold-dropsite-distance", Pick1(3:100)),
      c(156, Pick1(0:100)), # Resource gathering %s
      c(157, Pick1(0:100)),
      c(158, Pick1(0:100)),
      c(159, Pick1(0:100))
    ),
    1
  )[[1]]
}
