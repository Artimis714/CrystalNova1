	db TAUROS ; 128

	db  75, 100,  95, 110,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, STEEL ; type
	db 45 ; catch rate
	db 211 ; base exp
	db METAL_COAT, LEFTOVERS ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tauros/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, PROTECT, WEATHER_BALL, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, REST, ATTRACT, SUBSTITUTE, SURF, STRENGTH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, MEGAHORN, OUTRAGE, MEGA_KICK, FLASH_CANNON
	; end
