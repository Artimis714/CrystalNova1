	db DRATINI ; 147

	db  41,  64,  45,  50,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dratini/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, BLIZZARD, FROSTBITE, PROTECT, RAIN_DANCE, WILL_O_WISP, WEATHER_BALL, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, SWIFT, REST, ATTRACT, SUBSTITUTE, SURF, WATERFALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, OUTRAGE
	; end
