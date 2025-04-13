	db SNEASEL ; 215

	db  70, 120,  65, 110, 105,  55
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp
	db SILVER_LEAF, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sneasel/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, FROSTBITE, PROTECT, RAIN_DANCE, WEATHER_BALL, IRON_TAIL, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SWIFT, DREAM_EATER, REST, ATTRACT, THIEF, FURY_CUTTER, NIGHTMARE, SUBSTITUTE, MEGA_PUNCH, CUT, SURF, STRENGTH, ICE_BEAM, HAIL, DRAGON_CLAW, RAZOR_WIND
	; end
