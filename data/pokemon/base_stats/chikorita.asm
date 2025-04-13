	db CHIKORITA ; 152

	db  45,  49,  65,  45,  49,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	db GOLD_BERRY, GOLD_BERRY ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chikorita/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, WEATHER_BALL, SOLARBEAM, IRON_TAIL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, REST, ATTRACT, SUBSTITUTE, SWORDS_DANCE, GROWTH, CUT, FLASH, SWEET_SCENT, DRAGONBREATH, ROAR, OUTRAGE, SCALD, THUNDERBOLT, THUNDER, ZAP_CANNON
	; end
