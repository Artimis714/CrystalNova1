	db BULBASAUR ; 001

	db  45,  49,  49,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 64 ; base exp
	db GOLD_BERRY, GOLD_BERRY ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bulbasaur/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, WEATHER_BALL, SOLARBEAM, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, REST, ATTRACT, FURY_CUTTER, SUBSTITUTE, GROWTH, CUT, FLASH, SWEET_SCENT,
	; end
