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
      c("sn-maximum-food-drop-distance", Pick1(c(-1, 3:100))),
      c("sn-maximum-gaia-attack-response", Pick1(0:20)),
      c("sn-maximum-gold-drop-distance", Pick1(c(-1, 3:100))),
      c("sn-maximum-hunt-drop-distance", Pick1(c(-1, 3:100))),
      c("sn-maximum-stone-drop-distance", Pick1(c(-1, 3:100))),
      c("sn-maximum-wood-drop-distance", Pick1(c(-1, 3:100))),
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
      c(159, Pick1(0:100)),
      # c("SNAttackGroupMakeup", Pick1()),
      # c("SNChokePointDefendPriority", Pick1()),
      # c("SNDefendGroupMakeup", Pick1()),
      # c("SNExploreGroupMakeup", Pick1()),
      # c("SNPercentVictoryClamp", Pick1()),
      c(96, Pick1((-100):100)), # SNScalePercentDeathRetreat
      c(95, Pick1((-100):100)), # SNScalePercentHealthRetreat
      c(97, Pick1((-100):100)), # SNScalePercentUnitHealthRetreat
      c(110, Pick1(0:100)), # SNSpecialAttackInfluence2
      # c("SNSpecialAttackInfluence3", Pick1()),
      # c("SNSpecificBuildItemTime", Pick1((-1):30)),
      # c("SNSpecificBuildItemToBuild", Pick1()),
      c(88, Pick1((-1):30)), # SNTacticalUpdateFrequency
      # c("SNTributeAmount", Pick1()),
      # c("SNTributeChatFrequency", Pick1()),
      # c("SNTributeChatRandomness", Pick1()),
      # c("SNTributePersistence", Pick1()),
      # c("SNTributePlayer", Pick1()),
      # c("SNTributeTimeout", Pick1()),
      # c("SNUnskippableItemType", Pick1()),
      c(182, Pick1((-1):1)), # SNUpgradeToBronzeAgeASAP
      c(183, Pick1((-1):1)), # SNUpgradeToIronAgeASAP
      c(181, Pick1((-1):1)), # SNUpgradeToToolAgeASAP
      # c("sn-allow-civilian-defense", Pick1()),
      # c("sn-attack-diplomacy-impact", Pick1()),
      # c("sn-attack-group-gather-spacing", Pick1()),
      # c("sn-attack-group-size-randomness", Pick1()),
      # c("sn-attack-intelligence", Pick1()),
      # c("sn-attack-separation-time-randomness", Pick1()),
      c("sn-attack-winning-player", Pick1((-1):1)),
      c("sn-attack-winning-player-factor", Pick1(0:100)),
      # c("sn-blot-size", Pick1()),
      # c("sn-build-frequency", Pick1()),
      # c("sn-camp-max-distance", Pick1()),
      # c("sn-cap-civilian-explorers", Pick1()),
      # c("sn-cap-civilian-gatherers", Pick1()),
      # c("sn-consecutive-idle-unit-limit", Pick1()),
      # c("sn-coop-share-attacking", Pick1()),
      # c("sn-coop-share-attacking-interval", Pick1()),
      # c("sn-coop-share-information", Pick1()),
      # c("sn-defend-overlap-distance", Pick1()),
      # c("sn-defense-distance", Pick1()),
      # c("sn-dock-defend-priority", Pick1()),
      # c("sn-do-not-scale-for-difficulty-level", Pick1()),
      # c("sn-do-not-transport-from-same-zone", Pick1()),
      # c("sn-easier-reaction-percentage", Pick1()),
      # c("sn-easiest-reaction-percentage", Pick1()),
      # c("sn-enemy-sighted-response-distance", Pick1()),
      # c("sn-food-gatherer-percentage", Pick1()),
      # c("sn-forage-defend-priority", Pick1()),
      # c("sn-garrison-rams", Pick1()),
      # c("sn-gather-defense-units", Pick1()),
      # c("sn-gather-idle-soldiers-at-center", Pick1()),
      # c("sn-gold-defend-priority", Pick1()),
      # c("sn-gold-gatherer-percentage", Pick1()),
      # c("sn-group-commander-selection-method", Pick1()),
      # c("sn-group-form-distance", Pick1()),
      # c("sn-group-leader-defense-distance", Pick1()),
      # c("sn-hits-before-alliance-change", Pick1()),
      # c("sn-ignore-attack-group-under-attack", Pick1()),
      # c("sn-initial-attack-delay", Pick1()),
      # c("sn-initial-attack-delay-type", Pick1()),
      # c("sn-initial-exploration-required", Pick1()),
      # c("sn-intelligent-gathering", Pick1()),
      # c("sn-max-build-plan-gatherer-percentage", Pick1()),
      # c("sn-maximum-attack-group-size", Pick1()),
      # c("sn-maximum-boat-attack-group-size", Pick1()),
      # c("sn-maximum-boat-defend-group-size", Pick1()),
      # c("sn-maximum-boat-explore-group-size", Pick1()),
      # c("sn-maximum-defend-group-size", Pick1()),
      # c("sn-maximum-explore-group-size", Pick1()),
      # c("sn-maximum-fish-boat-drop-distance", Pick1()),
      # c("sn-maximum-town-size", Pick1()),
      # c("sn-minimum-attack-group-size", Pick1()),
      # c("sn-minimum-dropsite-buffer", Pick1()),
      # c("sn-minimum-explore-group-size", Pick1()),
      # c("sn-minimum-town-size", Pick1()),
      c("sn-number-attack-groups", Pick1(0:10)),
      c("sn-number-boat-attack-groups", Pick1(0:10)),
      c("sn-number-boat-defend-groups", Pick1(0:10)),
      c("sn-number-boat-explore-groups", Pick1(0:10)),
      # c("sn-number-build-attempts-before-skip", Pick1()),
      c("sn-number-defend-groups", Pick1(0:10)),
      # c("sn-number-max-skip-cycles", Pick1()),
      # c("sn-save-scenario-information", Pick1()),
      c("sn-scale-maximum-attack-group-size", Pick1(0:100)),
      c("sn-scale-minimum-attack-group-size", Pick1(0:100)),
      c("sn-scaling-frequency", Pick1(1:20)),
      c("sn-special-attack-influence1", Pick1((-100):100)),
      # c("sn-special-attack-type1", Pick1()),
      # c("sn-special-attack-type2", Pick1()),
      # c("sn-special-attack-type3", Pick1()),
      c("sn-stone-dropsite-distance", Pick1(3:100))
      # c("sn-stone-gatherer-percentage", Pick1()),
      # c("sn-target-evaluation-distance", Pick1()),
      # c("sn-task-ungrouped-soldiers", Pick1()),
      # c("sn-wood-gatherer-percentage", Pick1()),
      # c("sn-zero-priority-distance", Pick1())
    ),
    1
  )[[1]]
}
