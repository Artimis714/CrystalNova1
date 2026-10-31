EggGroupNames:
	table_width 2, EggGroupNames
	dw EggMonster
	dw EggWater1
	dw EggBug
	dw EggFlying
	dw EggGround
	dw EggFairy
	dw EggPlant
	dw EggHumanshape
	dw EggWater3
	dw EggMineral
	dw EggIndeterminate
	dw EggWater2
	dw EggDitto
	dw EggDragon
	dw EggNone
	assert_table_length NUM_EGG_GROUPS

EggMonster:       db "MONSTER@"
EggWater1:        db "MARSH@"
EggBug:           db "INSECT@"
EggFlying:        db "AVIAN@"
EggGround:        db "FIELD@"
EggFairy:         db "MYSTIC@"
EggPlant:         db "PLANT@"
EggHumanshape:    db "HUMANOID@"
EggWater3:        db "AQUATIC@"
EggMineral:       db "MINERAL@"
EggIndeterminate: db "ODDITY@"
EggWater2:        db "FISH@"
EggDitto:         db "MIMIC@"
EggDragon:        db "DRAGON@"
EggNone:          db "UNDISCOVERED@"
