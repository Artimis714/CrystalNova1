	db LEDIAN ; 166

	db  55,  110,  50, 100,  80, 60
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 90 ; catch rate
	db 134 ; base exp
	db QUICK_CLAW, LEFTOVERS ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ledian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, WEATHER_BALL, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SWIFT, THUNDERPUNCH, REST, ATTRACT, THIEF, SUBSTITUTE, MEGA_PUNCH, BATON_PASS, FLASH, SWEET_SCENT, RAZOR_WIND, FIRE_PUNCH, ROCK_SMASH, CUT
	; end
