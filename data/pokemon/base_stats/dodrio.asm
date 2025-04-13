	db DODRIO ; 085

	db  60, 110,  70, 100,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db FLYING, ROCK ; type
	db 45 ; catch rate
	db 158 ; base exp
	db SHARP_BEAK, GOLD_LEAF ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dodrio/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, WEATHER_BALL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, SUBSTITUTE, SWORDS_DANCE, BATON_PASS, FLY, DIG, EARTHQUAKE, MEGA_KICK, ROCK_SLIDE
	; end
