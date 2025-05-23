	db BUTTERFREE ; 012

	db  60,  65,  50,  70,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 160 ; base exp
	db SILVERPOWDER, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, WEATHER_BALL, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SWIFT, DREAM_EATER, REST, ATTRACT, NIGHTMARE, SUBSTITUTE, BATON_PASS, FLASH, SWEET_SCENT, RAZOR_WIND, SWIFT
	; end
