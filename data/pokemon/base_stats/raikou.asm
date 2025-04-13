	db RAIKOU ; 243

	db  90,  95,  75, 115, 115, 100
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, DARK ; type
	db 3 ; catch rate
	db 216 ; base exp
	db BRIGHTPOWDER, MAGNET ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 50 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raikou/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, WEATHER_BALL, IRON_TAIL, THUNDER, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SANDSTORM, SWIFT, REST, THIEF, SUBSTITUTE, CUT, STRENGTH, FLASH, THUNDERBOLT, CRUNCH
	; end
