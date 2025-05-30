	db RAPIDASH ; 078

	db  65, 100,  70, 115, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, NORMAL ; type
	db 60 ; catch rate
	db 192 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rapidash/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, WILL_O_WISP, WEATHER_BALL, IRON_TAIL, RETURN, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, SWIFT, REST, ATTRACT, SUBSTITUTE, FLAMETHROWER, BATON_PASS, FLASH
	; end
