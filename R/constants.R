# Stored groups of values which different parameters within rules can take.

AGES <-
  c("dark-age",
    "feudal-age",
    "castle-age",
    "imperial-age")

BUILDINGS <-
  c("barracks",
    "dock",
    "farm",
    "siege-workshop",
    "mill",
    "house",
    "house",
    "house",
    "castle",
    "market",
    "archery-range",
    "stable",
    "blacksmith",
    "monastery",
    "town-center",
    "university",
    "wonder",
    "lumber-camp",
    "mining-camp",
    "outpost",
    "watch-tower-line",
    "watch-tower", # Bug so include both
    "guard-tower",
    "fish-trap",
    "keep",
    "bombard-tower") # trade workshop?

COMMODITIES <-
  c("food",
    "stone",
    "wood")

CIVS <-
  c("gaia",
    "aztec",
    "briton",
    "byzantine",
    "celtic",
    "chinese",
    "frankish",
    "gothic",
    "hun",
    "japanese",
    "korean",
    "mayan",
    "mongol",
    "persian",
    "saracen",
    "spanish",
    "teutonic",
    "turkish",
    "viking")

DIFFICULTY_PARAMETERS <-
  c("ability-to-dodge-missiles",
    "ability-to-maintain-distance")

DIPLOMATIC_STANCES <-
  c("ally",
    "neutral",
    "enemy")

GAME_TYPES <-
  c(0, # random
    1, # regicide
    2, # deathmatch
    3, # scenario
    5, # king of the hill
    6, # wonder race
    7, # defend the wonder
    8) # turbo random

GOAL_IDS <-
  1:40

MAP_SIZES <-
  c("tiny",
    "small",
    "medium",
    "normal",
    "large",
    "giant")

MAP_TYPES <-
  c("arabia",
    "archipelago",
    "baltic",
    "black-forest",
    "coastal",
    "continental",
    "crater-lake",
    "fortress",
    "gold-rush",
    "highland",
    "islands",
    "mediterranean",
    "migration",
    "rivers",
    "team-islands",
    "scandanavia",
    "mongolia",
    "salt-marsh",
    "yucatan",
    "arena",
    "oasis",
    "ghost-lake",
    "nomad",
    "real-world-spain",
    "real-world-england",
    "real-world-midEast",
    "real-world-texas",
    "real-world-italy",
    "real-world-caribbean",
    "real-world-france",
    "real-world-jutland",
    "real-world-nippon",
    "real-world-byzantium",
    "custom_map",
    "scenario-map")

PERIMETERS <-
  1:2

# Artificially limited, not due to functionality but due to the generalizability of the genes generated.
PLAYER_NUMBERS <-
  c("any-ally",
    #"any-computer",
    #"any-computer-ally",
    #"any-computer-enemy",
    #"any-computer-neutral",
    "any-enemy",
    #"any-human",
    #"any-human-ally",
    #"any-human-enemy",
    #"any-human-neutral",
    "any-neutral",
    "every-ally",
    #"every-computer",
    "every-enemy",
    #"every-human",
    "every-neutral")

FULL_PLAYER_NUMBERS <- # Only for backwards compatibility
  c("any-ally",
    "any-computer",
    "any-computer-ally",
    "any-computer-enemy",
    "any-computer-neutral",
    "any-enemy",
    "any-human",
    "any-human-ally",
    "any-human-enemy",
    "any-human-neutral",
    "any-neutral",
    "every-ally",
    "every-computer",
    "every-enemy",
    "every-human",
    "every-neutral")

# Artificially limited, not due to functionality but due to the generalizability of the genes generated.
FRIENDLY_PLAYERS <-
  c("any-ally",
    #"any-computer-ally",
    #"any-computer-neutral",
    #"any-human-ally",
    #"any-human-neutral",
    "any-neutral",
    "every-ally",
    "every-neutral")

RELOPS <-
  c("==", "<=", "<=", ">=", ">=", "!=", "<", ">", "<", ">")

RESEARCH_ITEMS <-
  c("ri-elite-skirmisher",
    "ri-crossbow",
    "ri-arbalest",
    "ri-heavy-cavalry-archer",
    "ri-hand-cannon",
    "ri-thumb-ring",
    "ri-parthian-tactics",
    "ri-fletching",
    "ri-bodkin-arrow",
    "ri-bracer",
    "ri-padded-archer-armor",
    "ri-leather-archer-armor",
    "ri-ring-archer-armor",
    "ri-ballistics",
    "ri-chemistry",
    "ri-conscription",
    "ri-man-at-arms",
    "ri-long-swordsman",
    "ri-two-handed-swordsman",
    "ri-champion",
    "ri-pikeman",
    "ri-halberdier",
    "ri-elite-eagle-warrior",
    "ri-tracking",
    "ri-squires",
    "ri-forging",
    "ri-iron-casting",
    "ri-blast-furnace",
    "ri-scale-mail",
    "ri-chain-mail",
    "ri-plate-mail",
    "ri-conscription",
    "ri-blast-furnace",
    "ri-bodkin-arrow",
    "ri-bracer",
    "ri-chain-barding",
    "ri-chain-mail",
    "ri-fletching",
    "ri-forging",
    "ri-iron-casting",
    "ri-leather-archer-armor",
    "ri-padded-archer-armor",
    "ri-plate-barding",
    "ri-plate-mail",
    "ri-ring-archer-armor",
    "ri-scale-barding",
    "ri-scale-mail",
    "ri-conscription",
    "ri-hoardings",
    "ri-sappers",
    "my-unique-unit-upgrade",
    "ri-elite-berserk",
    "ri-elite-cataphract",
    "ri-elite-chu-ko-nu",
    "ri-elite-huskarl",
    "ri-elite-janissary",
    "ri-elite-longbowman",
    "ri-elite-mameluke",
    "ri-elite-mangudai",
    "ri-elite-samurai",
    "ri-elite-teutonic-knight",
    "ri-elite-throwing-axeman",
    "ri-elite-war-elephant",
    "ri-elite-woad-raider",
    "ri-elite-war-wagon",
    "ri-elite-conquistador",
    "ri-elite-plumed-archer",
    "ri-elite-jaguar-man",
    "ri-elite-tarkan",
    "my-unique-research",
    "ri-cannon-galleon",
    "ri-careening",
    "ri-deck-guns",
    "ri-dry-dock",
    "ri-elite-longboat",
    "ri-fast-fire-ship",
    "ri-galleon",
    "ri-heavy-demolition-ship",
    "ri-shipwright",
    "ri-war-galley",
    "ri-elite-turtle-ship",
    "ri-bow-saw",
    "ri-double-bit-axe",
    "ri-two-man-saw",
    "ri-banking",
    "ri-caravan",
    "ri-cartography",
    "ri-coinage",
    "ri-guilds",
    "ri-crop-rotation",
    "ri-heavy-plow",
    "ri-horse-collar",
    "ri-gold-mining",
    "ri-gold-shaft-mining",
    "ri-stone-mining",
    "ri-stone-shaft-mining",
    "ri-heresy",
    "ri-atonement",
    "ri-sanctity",
    # "ri-fervour", ?? errors??
    "ri-redemption",
    # "ri-herbal-medicine", May not exist in AI?
    "ri-faith",
    "ri-illumination",
    "ri-block-printing",
    "ri-theocracy",
    "ri-heavy-scorpion",
    "ri-capped-ram",
    "ri-siege-ram",
    "ri-onager",
    "ri-siege-onager",
    "ri-bombard-cannon",
    "ri-light-cavalry",
    "ri-hussar",
    "ri-cavalier",
    "ri-paladin",
    "ri-heavy-camel",
    "ri-bloodlines",
    "ri-husbandry",
    "ri-forging",
    "ri-iron-casting",
    "ri-blast-furnace",
    "ri-conscription",
    "ri-hand-cart",
    "ri-loom",
    "ri-town-patrol",
    "ri-town-watch",
    "ri-wheel-barrow",
    "ri-architecture",
    "ri-ballistics",
    "ri-bombard-tower",
    "ri-chemistry",
    "ri-fortified-wall",
    "ri-guard-tower",
    "ri-heated-shot",
    "ri-keep",
    "ri-masonry",
    "ri-murder-holes",
    "ri-siege-engineers",
    "ri-stonecutting",
    "feudal-age",
    "feudal-age",
    "feudal-age",
    "feudal-age",
    "feudal-age",
    "castle-age",
    "castle-age",
    "castle-age",
    "castle-age",
    "castle-age",
    "imperial-age",
    "imperial-age",
    "imperial-age",
    "imperial-age",
    "imperial-age")

RESEARCH_ITEMS_AGES <-
  c("feudal-age",
    "castle-age",
    "imperial-age")

RESOURCE_TYPES <-
  c("food",
    "gold",
    "stone",
    "wood")

SHARED_GOAL_IDS <-
  0:255

SIGNAL_IDS <-
  0:255

STARTING_RESOURCES <-
  c("low-resources",
    "medium-resources",
    "high-resources")

TIMER_IDS <-
  2:10 # Timer 1 is earmarked for attackP

UNITS <-
  c("archer-line",
    "skirmisher-line",
    "chu-ko-nu-line",
    "longbowman-line",
    "plumed-archer-line",
    "villager",
    "villager",
    "villager",
    "militiaman-line",
    "spearman-line",
    "berserk-line",
    "huskarl-line",
    "samurai-line",
    "teutonic-knight-line",
    "throwing-axeman-line",
    "woad-raider-line",
    "jaguar-man-line",
    "eagle-warrior-line",
    "camel-line",
    "knight-line",
    "scout-cavalry-line",
    "cataphract-line",
    "mameluke-line",
    "war-elephant-line",
    "tarkan-line",
    "battering-ram-line",
    "mangonel-line",
    "demolition-ship-line",
    "fire-ship-line",
    "galley-line",
    "cannon-galleon-line",
    "longboat-line",
    "turtle-ship-line",
    "conquistador-line",
    "cavalry-archer-line",
    "mangudai-line",
    "war-wagon-line",
    "janissary-line",
    "scout-cavalry-line",
    "scorpion-line",
    "trade-cog",
    "bombard-cannon",
    "trade-cart",
    "monk",
    "transport-ship",
    "fishing-ship",
    "petard",
    "hand-cannoneer",
    "trebuchet")

UNITS_BARRACKS <-
  c("militiaman-line",
    "spearman-line",
    "eagle-warrior-line")

UNITS_DOCKS <-
  c("demolition-ship-line",
    "fire-ship-line",
    "galley-line",
    "cannon-galleon-line",
    "longboat-line",
    "turtle-ship-line",
    "trade-cog",
    "transport-ship",
    "fishing-ship")

VICTORY_CONDITIONS <-
  c("standard",
    "conquest",
    "time-limit",
    "score",
    "custom")

WALL_TYPES <-
  c("stone-wall-line",
    "fortified-wall",
    "palisade-wall",
    "stone-wall")

INITIALISATION_RULES <-
"
(defrule
	(true)
  =>
  (set-strategic-number sn-coop-share-information 1)
  (set-strategic-number sn-hits-before-alliance-change 10)
  (set-strategic-number sn-initial-exploration-required 0)
  (set-strategic-number sn-home-exploration-time 360)
  (set-strategic-number sn-easiest-reaction-percentage 100)
  (set-strategic-number sn-easier-reaction-percentage 100)
  (set-strategic-number sn-do-not-scale-for-difficulty-level 1)
  (set-strategic-number sn-number-civilian-militia 3)
  (set-strategic-number sn-wall-targeting-mode 1)
  (disable-self)
)

(defrule
  (true)
  =>
  (set-strategic-number sn-number-explore-groups 1)
  (set-strategic-number sn-blot-exploration-map 0)
  (set-difficulty-parameter ability-to-maintain-distance 0)
  (set-difficulty-parameter ability-to-dodge-missiles 0)
  (set-strategic-number sn-consecutive-idle-unit-limit 1)
  (set-strategic-number sn-placement-zone-size 16)
  (set-strategic-number sn-gather-defense-units 0)
  (set-strategic-number sn-build-frequency 1)
  (set-strategic-number sn-dock-training-filter 0) ;new, if 1 then only train boats in lakes with enemy ships
  (disable-self)
)

(defrule
	(game-time > 1)
  =>
	(set-strategic-number sn-retask-gather-amount 50)
	(set-strategic-number sn-maximum-gaia-attack-response 3)
	(set-strategic-number sn-allow-civilian-defense 1)
	(set-strategic-number sn-intelligent-gathering 1)
	(set-strategic-number sn-minimum-civilian-explorers 0)
	(set-strategic-number sn-minimum-boar-hunt-group-size 6)
	(set-strategic-number sn-number-build-attempts-before-skip 2)
	(disable-self)
)

(defrule
  (true)
  =>
  (set-strategic-number sn-minimum-defend-group-size 1)
  (set-strategic-number sn-maximum-defend-group-size 1)
  (set-strategic-number sn-percent-enemy-sighted-response 10)
  (set-strategic-number sn-enemy-sighted-response-distance 20)
  (set-strategic-number sn-coop-share-attacking 0)
  (set-strategic-number sn-gather-defense-units 0) ;1 or 0, previously 2 but 2 does nothing
  (set-strategic-number sn-scale-minimum-attack-group-size 0)
  (set-strategic-number sn-scale-maximum-attack-group-size 0)
  (set-strategic-number sn-defend-overlap-distance 1)
  (disable-self)
)

(defrule
  (true)
  =>
  (set-strategic-number sn-minimum-attack-group-size 5)
  (set-strategic-number sn-maximum-attack-group-size 10)
  (set-strategic-number sn-minimum-defend-group-size 3)
  (set-strategic-number sn-maximum-defend-group-size 8)
  (disable-self)
)

(defrule
  (true)
  =>
  (set-strategic-number sn-maximum-gaia-attack-response 3)
  (set-strategic-number sn-percent-exploration-required	0)
  (set-strategic-number sn-random-placement-factor 0)
  (set-strategic-number sn-relic-return-distance 1000)
  (disable-self)
)

(defrule
  (true)
  =>
  (set-strategic-number sn-target-evaluation-in-progress 0) ;0
  (set-strategic-number sn-target-evaluation-boat 0) ;0
  (set-strategic-number sn-target-evaluation-rof 0) ;0
  (set-strategic-number sn-target-evaluation-continent 0) ;0
  (set-strategic-number sn-target-evaluation-siege-weapon 100) ;100
  (set-strategic-number sn-target-evaluation-distance 100) ;100
  (set-strategic-number sn-target-evaluation-time-kill-ratio 0) ;0
  (set-strategic-number sn-target-evaluation-hitpoints 100) ;100
  (set-strategic-number sn-target-evaluation-damage-capability 1) ;1
  (set-strategic-number sn-target-evaluation-kills 0) ;0
  (set-strategic-number sn-target-evaluation-randomness 0) ;0
  (set-strategic-number sn-target-evaluation-attack-attempts 0) ;0
  (set-strategic-number sn-target-evaluation-range -100) ;-100
  (set-strategic-number sn-target-evaluation-ally-proximity 0) ;0
  (set-strategic-number sn-local-targeting-mode 1) ;new, supposedly makes skirms focus archers, etc
  (set-strategic-number sn-ttkfactor-scalar 100) ;new, time to kill, if lower than 100 focus close units
  (disable-self)
)

(defrule
	(true)
  =>
	(set-strategic-number sn-target-evaluation-distance 1)
	(set-strategic-number sn-target-evaluation-time-kill-ratio 1)
	(set-strategic-number sn-target-evaluation-damage-capability 100)
	(set-strategic-number sn-target-evaluation-in-progress 100)
	(set-strategic-number sn-target-evaluation-hitpoints 100)
  (disable-self)
)

(defrule
  (true)
  =>
	(set-strategic-number sn-group-commander-selection-method 1)
  (set-strategic-number sn-attack-separation-time-randomness 1)
  (set-strategic-number sn-ignore-attack-group-under-attack 0)
  (disable-self)
)

(defrule
	(true)
  =>
  (set-strategic-number sn-gold-defend-priority 1)
  (set-strategic-number sn-stone-defend-priority 3)
  (set-strategic-number sn-forage-defend-priority 2)
  (set-strategic-number sn-relic-defend-priority 1)
  (set-strategic-number sn-town-defend-priority 1)
  (set-strategic-number sn-defense-distance 3)
  (set-strategic-number sn-defend-overlap-distance 5)
  (set-strategic-number sn-gather-idle-soldiers-at-center 0)
  (disable-self)
)

(defrule
  (true)
  =>
  (set-strategic-number sn-group-leader-defense-distance 2) 	;normally 3, recently changed
  (set-strategic-number sn-consecutive-idle-unit-limit 0)
  (set-strategic-number sn-sentry-distance 8)
  (set-strategic-number sn-sentry-distance-variation 2)
  (set-strategic-number sn-dock-defend-priority 1)
  (set-strategic-number sn-minimum-water-body-size-for-dock 1100)
  (disable-self)
)

(defrule
  (game-time >= 2)
  =>
  (set-difficulty-parameter ability-to-maintain-distance 0)
  (set-difficulty-parameter ability-to-dodge-missiles 0)
  (set-strategic-number sn-percent-enemy-sighted-response 90)
  (set-strategic-number sn-enemy-sighted-response-distance 120)
  (set-strategic-number sn-minimum-attack-group-size 15)
  (set-strategic-number sn-maximum-attack-group-size 25)
  (set-strategic-number sn-task-ungrouped-soldiers 0)
  (set-strategic-number sn-minimum-water-body-size-for-dock 1000)
  (disable-self)
)"
