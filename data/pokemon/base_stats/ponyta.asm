	db PONYTA ; 077

	db  50,  85,  55,  90,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, NORMAL ; type
	db 190 ; catch rate
	db 152 ; base exp
	db FOCUS_BAND, CHARCOAL ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ponyta/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, WILL_O_WISP, WEATHER_BALL, IRON_TAIL, RETURN, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, SWIFT, REST, ATTRACT, SUBSTITUTE, FLAMETHROWER, BATON_PASS, FLASH
	; end
