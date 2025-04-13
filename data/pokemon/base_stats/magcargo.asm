	db MAGCARGO ; 219

	db  100, 80, 150,  30,  80, 150
	;   hp  atk  def  spd  sat  sdf

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 154 ; base exp
	db CHARCOAL, FOCUS_BAND ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magcargo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, WEATHER_BALL, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, REST, ATTRACT, ROCK_SLIDE, SUBSTITUTE, STRENGTH, FLAMETHROWER, ZAP_CANNON, THUNDERBOLT, SANDSTORM, SMOG, FLASH
	; end
