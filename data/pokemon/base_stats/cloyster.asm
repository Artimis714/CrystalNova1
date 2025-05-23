	db CLOYSTER ; 091

	db  50,  95, 180,  70,  85,  45
	;   hp  atk  def  spd  sat  sdf

	db GHOST, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp
	db BIG_PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cloyster/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, FROSTBITE, PROTECT, RAIN_DANCE, WEATHER_BALL, RETURN, DOUBLE_TEAM, SWAGGER, SWIFT, REST, ATTRACT, SUBSTITUTE, SURF, WHIRLPOOL, ICE_BEAM, HAIL, SHADOW_BALL
	; end
