	db DODUO ; 084

	db  35,  85,  45,  75,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FLYING, ROCK ; type
	db 190 ; catch rate
	db 96 ; base exp
	db NO_ITEM, SILVER_LEAF ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/doduo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, WEATHER_BALL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, SUBSTITUTE, SWORDS_DANCE, BATON_PASS, FLY, DIG, EARTHQUAKE, ROCK_SLIDE
	; end
