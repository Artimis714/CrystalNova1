MACRO momitem
; money to trigger, cost, kind, item
	dt \1
	dt \2
	db \3, \4
ENDM

MomItems_1:
	momitem      0,    90, MOM_ITEM, FRESH_WATER
	momitem      0,   150, MOM_ITEM, LAVA_COOKIE
	momitem      0,   180, MOM_ITEM, MOON_BALL
	momitem      0,   450, MOM_ITEM, X_EVADE
	momitem      0,   500, MOM_ITEM, DUSK_BALL
.End

MomItems_2:
	momitem    900,   300, MOM_DOLL, DECO_JIGGLYPUFF_DOLL
	momitem   4000,   270, MOM_DOLL, DECO_ODDISH_DOLL
	momitem   7000,   600, MOM_DOLL, DECO_STARYU_DOLL
	momitem  10000,  1800, MOM_DOLL, DECO_CHARMANDER_DOLL
	momitem  15000,  3000, MOM_DOLL, DECO_PIKACHU_DOLL
	momitem  19000,   600, MOM_DOLL, DECO_UNOWN_DOLL
	momitem  30000,  4800, MOM_DOLL, DECO_CLEFAIRY_DOLL
	momitem  40000,   900, MOM_DOLL, DECO_GENGAR_DOLL
	momitem  50000,  8000, MOM_DOLL, DECO_SURF_PIKACHU_DOLL
	momitem 100000, 22800, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
.End

	dt 0 ; unused
