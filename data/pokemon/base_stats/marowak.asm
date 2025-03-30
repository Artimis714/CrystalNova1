	db MAROWAK ; 105

	db  60,  110, 110,  70,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GHOST ; type
	db 75 ; catch rate
	db 124 ; base exp
	db THICK_CLUB, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/marowak/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, PROTECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SANDSTORM, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, ROCK_SLIDE, SUBSTITUTE, SWORDS_DANCE, MEGA_PUNCH, STRENGTH, FLAMETHROWER, ICE_BEAM, SHADOW_BALL, OUTRAGE, MEGA_KICK, NIGHTMARE
	; end
