	db PARASECT ; 047

	db  60, 120, 110,  30,  80, 110
	;   hp  atk  def  spd  sat  sdf

	db BUG, GHOST ; type
	db 75 ; catch rate
	db 128 ; base exp
	db BIG_MUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/parasect/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLUDGE_BOMB, DREAM_EATER, REST, ATTRACT, THIEF, FURY_CUTTER, NIGHTMARE, GROWTH, CUT, FLASH, SWEET_SCENT, SMOG
	; end
