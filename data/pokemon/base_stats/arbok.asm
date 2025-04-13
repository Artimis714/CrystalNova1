	db ARBOK ; 024

	db  60,  95,  100,  80,  65,  100
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 90 ; catch rate
	db 147 ; base exp
	db BLACKGLASSES, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arbok/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, WEATHER_BALL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLUDGE_BOMB, REST, ATTRACT, THIEF, SUBSTITUTE, SWORDS_DANCE, BATON_PASS, STRENGTH, CRUNCH, SMOG, CUT
	; end
