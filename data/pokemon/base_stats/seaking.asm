	db SEAKING ; 119

	db  80,  92,  65,  68,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, NORMAL ; type
	db 60 ; catch rate
	db 170 ; base exp
	db MYSTIC_WATER, LEFTOVERS ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seaking/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, WEATHER_BALL, RETURN, DOUBLE_TEAM, SWAGGER, SWIFT, REST, ATTRACT, SUBSTITUTE, SURF, WATERFALL, ICE_BEAM, MEGAHORN, SCALD
	; end
