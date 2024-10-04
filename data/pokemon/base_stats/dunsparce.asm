	db DUNSPARCE ; 206

	db 125, 100, 80,  55,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GROUND ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, OLD_AMBER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dunsparce/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SANDSTORM, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, SUBSTITUTE, SWORDS_DANCE, BATON_PASS, STRENGTH, FLAMETHROWER, THUNDERBOLT, MEGAHORN, OUTRAGE
	; end
