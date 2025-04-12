Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartViolet2
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartShadyNationalPark
	dw MartShadyNationalPark2
	dw MartOlivine
	dw MartOlivine2
	dw MartEcruteak
	dw MartEcruteak2
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartViridian2
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartSaffron2
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	dw MartFuchsiaFood
	dw MartOlivineFood
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartViolet:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db FLOWER_MAIL
	db -1 ; end

MartViolet2:
	db 15 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db TM_RAIN_DANCE
	db TM_SUNNY_DAY
	db TM_HAIL
	db TM_SANDSTORM
	db TM_SMOG
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 9 ; # items
	db CHARCOAL
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 9 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 9 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db X_ACCURACY
	db X_EVADE
	db X_SP_DEF
	db DIRE_HIT
	db GUARD_SPEC
	db -1 ; end

MartGoldenrod4F:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end

MartGoldenrod5F1:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end

MartGoldenrod5F2:
	db 6 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_BATON_PASS
	db TM_SWIFT
	db -1 ; end

MartGoldenrod5F3:
	db 7 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROCK_SMASH
	db TM_FURY_CUTTER
	db TM_MUD_SLAP
	db TM_ATTRACT
	db -1 ; end

MartGoldenrod5F4:
	db 11 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db TM_FURY_CUTTER
	db TM_MUD_SLAP
	db TM_ATTRACT
	db TM_BATON_PASS
	db TM_SWIFT
	db TM_SCALD
	db -1 ; end

MartShadyNationalPark:
	db 7 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db LAVA_COOKIE
	db SLOWPOKETAIL
	db SMOKE_BALL
	db PARK_BALL
	db -1 ; end

MartShadyNationalPark2:
	db 10 ; # items
	db LEMONADE
	db RAGECANDYBAR
	db SLOWPOKETAIL
	db LAVA_COOKIE
	db SCOPE_LENS
	db EVERSTONE
	db KINGS_ROCK
	db QUICK_CLAW
	db SMOKE_BALL
	db PARK_BALL
	db -1 ; end

MartOlivine:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db SURF_MAIL
	db -1 ; end

MartOlivine2:
	db 14 ; # items
	db POKE_BALL
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db TM_SWORDS_DANCE
	db TM_GROWTH
	db TM_ROLLOUT
	db TM_DIG
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartEcruteak2:
	db 14 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db TM_CURSE
	db TM_NIGHTMARE
	db TM_WILL_O_WISP
	db TM_HIDDEN_POWER
	db -1 ; end

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db PARK_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 5 ; # items
	db HEAVY_BALL
	db MOON_BALL
	db LOVE_BALL
	db LURE_BALL
	db ULTRA_BALL
	db -1 ; end

MartBlackthorn:
	db 13 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db TM_ROAR
	db TM_SUBSTITUTE
	db TM_SWAGGER
	db TM_THIEF
	db -1 ; end

MartViridian:
	db 9 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartViridian2:
	db 12 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db TM_SCALD
	db TM_ZAP_CANNON
	db TM_DRAGON_CLAW
	db FLOWER_MAIL
	db -1 ; end

MartPewter:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db TM_PROTECT
	db -1 ; end

MartCerulean:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db SURF_MAIL
	db -1 ; end

MartLavender:
	db 8 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db MAX_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartVermilion:
	db 8 ; # items
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartCeladon2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon3F:
	db 12 ; # items
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_HAIL
	db TM_RAIN_DANCE
	db TM_SANDSTORM
	db TM_SMOG
	db TM_DOUBLE_TEAM
	db TM_FRUSTRATION
	db TM_RETURN
	db TM_SOLARBEAM
	db TM_HYPER_BEAM
	db TM_FROSTBITE
	db -1 ; end

MartCeladon4F:
	db 6 ; # items
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db MOON_STONE
	db SUN_STONE
	db -1 ; end

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F2:
	db 9 ; # items
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db X_ACCURACY
	db X_EVADE
	db X_SP_DEF
	db GUARD_SPEC
	db DIRE_HIT
	db -1 ; end

MartFuchsia:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db MAX_REPEL
	db FLOWER_MAIL
	db TM_TOXIC
	db TM_STEEL_WING
	db -1 ; end

MartSaffron:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db FLOWER_MAIL
	db -1 ; end

MartSaffron2:
	db 11 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db TM_REST
	db TM_MEGA_PUNCH
	db TM_DREAM_EATER
	db FLOWER_MAIL
	db -1 ; end

MartMtMoon:
	db 7 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db MOOMOO_MILK
	db REPEL
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 9 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db MAX_ETHER
	db MAX_ELIXER
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartFuchsiaFood:
	db 14 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db MOOMOO_MILK
	db RAGECANDYBAR
	db LAVA_COOKIE
	db PSNCUREBERRY
	db PRZCUREBERRY
	db BURNT_BERRY
	db ICE_BERRY
	db BITTER_BERRY
	db MINT_BERRY
	db MYSTERYBERRY
	db SLVR_BERRY
	db -1 ; end

MartOlivineFood:
	db 10 ; # items
	db FRESH_WATER
	db SODA_POP
	db LAVA_COOKIE
	db PSNCUREBERRY
	db PRZCUREBERRY
	db BURNT_BERRY
	db ICE_BERRY
	db BITTER_BERRY
	db MINT_BERRY
	db MYSTERYBERRY
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
