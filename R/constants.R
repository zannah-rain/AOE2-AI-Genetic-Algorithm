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
