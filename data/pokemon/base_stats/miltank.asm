	db MILTANK ; 241

	db  95,  80, 105, 100,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, ROCK ; type
	db 45 ; catch rate
	db 200 ; base exp
	db MOOMOO_MILK, MOOMOO_MILK ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/miltank/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, WEATHER_BALL, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SANDSTORM, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, ROCK_SLIDE, SUBSTITUTE, SWORDS_DANCE, MEGA_PUNCH, SURF, STRENGTH, THUNDERBOLT, ICE_BEAM
	; end
