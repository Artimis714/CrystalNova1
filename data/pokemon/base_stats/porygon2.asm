	db PORYGON2 ; 233

	db  85, 135,  90,  90, 80,  75
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/porygon2/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, FROSTBITE, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SWIFT, DREAM_EATER, REST, THIEF, NIGHTMARE, SUBSTITUTE, FLASH, THUNDERBOLT, ICE_BEAM, FLASH_CANNON
	; end
