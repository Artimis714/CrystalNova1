	db STARMIE ; 121

	db  60,  75,  85, 115, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIRE ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STAR_PIECE, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, WILL_O_WISP, FRUSTRATION, FIRE_BLAST, RETURN, DOUBLE_TEAM, SWAGGER, SWIFT, REST, ATTRACT, SUBSTITUTE, SURF, FLASH, WHIRLPOOL, WATERFALL, FLAMETHROWER, SUNNY_DAY, SCALD, THUNDER, THUNDERBOLT, ZAP_CANNON, 
	; end
