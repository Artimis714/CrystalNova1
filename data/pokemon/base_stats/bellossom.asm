	db BELLOSSOM ; 182

	db  75,  80,  85,  50, 110, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIRE ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bellossom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, WILL_O_WISP, WEATHER_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, SWAGGER, REST, ATTRACT, SUBSTITUTE, GROWTH, CUT, FLASH, SWEET_SCENT, FLAMETHROWER, FIRE_BLAST
	; end
