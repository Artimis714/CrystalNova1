	db CLEFFA ; 173

	db  50,  25,  28,  15,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 150 ; catch rate
	db 37 ; base exp
	db MYSTERYBERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cleffa/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, WILL_O_WISP, WEATHER_BALL, SOLARBEAM, IRON_TAIL, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, NIGHTMARE, SUBSTITUTE, MEGA_PUNCH, BATON_PASS, FLASH, FLAMETHROWER
	; end
