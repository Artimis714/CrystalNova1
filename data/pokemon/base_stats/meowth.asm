	db MEOWTH ; 052

	db  40,  45,  35,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp
	db AMULET_COIN, AMULET_COIN ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meowth/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, PROTECT, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SWIFT, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, SUBSTITUTE, SWORDS_DANCE, BATON_PASS, THUNDERBOLT
	; end
