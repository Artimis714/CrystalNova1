	db PINSIR ; 127

	db  65, 125, 100,  85,  120,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, WILL_O_WISP, WEATHER_BALL, RETURN, DOUBLE_TEAM, SWAGGER, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, SUBSTITUTE, SWORDS_DANCE, MEGA_PUNCH, STRENGTH, MEGAHORN, OUTRAGE, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST
	; end
