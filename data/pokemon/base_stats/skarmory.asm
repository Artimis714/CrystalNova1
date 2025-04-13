	db SKARMORY ; 227

	db  65,  80, 140,  70,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db GOLD_LEAF, GOLD_LEAF ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, WEATHER_BALL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SANDSTORM, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, SUBSTITUTE, SWORDS_DANCE, BATON_PASS, CUT, FLY, RAZOR_WIND, OUTRAGE, FLASH_CANNON, RAZOR_WIND, SKY_ATTACK
	; end
