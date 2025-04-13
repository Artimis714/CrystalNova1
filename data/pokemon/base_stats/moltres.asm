	db MOLTRES ; 146

	db  90, 100,  90,  90, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db BRIGHTPOWDER, CHARCOAL ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 50 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/moltres/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, WILL_O_WISP, WEATHER_BALL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SANDSTORM, FIRE_BLAST, SWIFT, REST, STEEL_WING, SUBSTITUTE, FLY, FLAMETHROWER, RAZOR_WIND, FLASH_CANNON, SKY_ATTACK, FLASH
	; end
