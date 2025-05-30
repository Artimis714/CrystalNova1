	db SWINUB ; 220

	db  50,  50,  40,  50,  50,  30
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 78 ; base exp
	db NEVERMELTICE, GOLD_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/swinub/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, FROSTBITE, PROTECT, RAIN_DANCE, WEATHER_BALL, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, REST, ATTRACT, SUBSTITUTE, STRENGTH, ICE_BEAM, HAIL
	; end
