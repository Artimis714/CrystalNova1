DEF LAKEOFRAGEHIDDENPOWER_BERRY_JUICE_PRICE EQU 1000
DEF LAKEOFRAGEHIDDENPOWER_SLVR_B_JUICE_PRICE EQU 2000
DEF LAKEOFRAGEHIDDENPOWER_GOLD_B_JUICE_PRICE EQU 4000

	object_const_def
	const POKESEERSHOUSE_GRANNY
	const LAKEOFRAGEHIDDENPOWERHOUSE_SHUCKLE

PokeSeersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BerryJuicerScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .GaveJuicerBerry
	checkevent EVENT_GAVE_JUICER_BERRY
	iftrue .GiveBerryJuice
	checkevent EVENT_GAVE_JUICER_SLVR_BERRY
	iftrue .GiveSlvrBerryJuice
	checkevent EVENT_GAVE_JUICER_GOLD_BERRY
	iftrue .GiveGoldBerryJuice
	writetext BerryJuicerIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal JUICE_BERRY,      .BerryJuice
	ifequal JUICE_SLVR_BERRY, .SlvrBerryJuice
	ifequal JUICE_GOLD_BERRY, .GoldBerryJuice
	sjump .No

.BerryJuice
	checkitem BERRY
	iffalse .No
	writetext BerryJuicerBJuiceText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoSale
	checkmoney YOUR_MONEY, LAKEOFRAGEHIDDENPOWER_BERRY_JUICE_PRICE
	ifequal HAVE_LESS, LORHPHouseNoMoneyScript
	takemoney YOUR_MONEY, LAKEOFRAGEHIDDENPOWER_BERRY_JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_GAVE_JUICER_BERRY
	takeitem BERRY
	writetext BerryJuicerGiveText
	waitbutton
	sjump .GaveJuicerBerry

.SlvrBerryJuice:
	checkitem SLVR_BERRY
	iffalse .No
	writetext BerryJuicerSJuiceText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoSale
	checkmoney YOUR_MONEY, LAKEOFRAGEHIDDENPOWER_SLVR_B_JUICE_PRICE
	ifequal HAVE_LESS, LORHPHouseNoMoneyScript
	takemoney YOUR_MONEY, LAKEOFRAGEHIDDENPOWER_SLVR_B_JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_GAVE_JUICER_SLVR_BERRY
	takeitem SLVR_BERRY
	opentext
	writetext BerryJuicerGiveText
	waitbutton
	sjump .GaveJuicerBerry

.GoldBerryJuice:
	checkitem GOLD_BERRY
	iffalse .No
	writetext BerryJuicerGJuiceText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoSale
	checkmoney YOUR_MONEY, LAKEOFRAGEHIDDENPOWER_GOLD_B_JUICE_PRICE
	ifequal HAVE_LESS, LORHPHouseNoMoneyScript
	takemoney YOUR_MONEY, LAKEOFRAGEHIDDENPOWER_GOLD_B_JUICE_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_GAVE_JUICER_GOLD_BERRY
	takeitem GOLD_BERRY
	writetext BerryJuicerGiveText
	waitbutton
	sjump .GaveJuicerBerry

.No
	writetext BerryJuicerNoText
	waitbutton
	closetext
	end

.NoSale
	writetext BerryJuicerQuitWastingtime
	waitbutton
	closetext
	end

.GaveJuicerBerry:
	writetext BerryJuicerPatienceChildText
	waitbutton
	closetext
	; special FadeBlackQuickly 
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end 

.GiveBerryJuice:
	writetext JuicerBText
	giveitem BERRY_JUICE
	iffalse .NoRoom
	clearevent EVENT_GAVE_JUICER_BERRY
	waitbutton
	closetext
	end

.GiveSlvrBerryJuice:
	writetext JuicerSText
	giveitem SLVR_B_JUICE
	iffalse .NoRoom
	clearevent EVENT_GAVE_JUICER_SLVR_BERRY
	waitbutton
	closetext
	end

.GiveGoldBerryJuice:
	writetext JuicerGText
	giveitem GOLD_B_JUICE
	iffalse .NoRoom
	clearevent EVENT_GAVE_JUICER_GOLD_BERRY
	waitbutton
	closetext
	end

.NoRoom:
	writetext BerryJuicerPackisFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "BERRY@"
	db "MOON BERRY@"
	db "SUN BERRY@"
	db "CANCEL@"

LORHPHouseNoMoneyScript:
	writetext NoMoneyChildText
	waitbutton
	closetext
	end

LakeofRageShuckle:
	opentext
	writetext ShuckleText
	cry SHUCKLE
	setval SHUCKLE
	special ShowPokedexEntry
	waitbutton
	closetext
	end

ShuckleText:
	text "Slgoo!"
	done

BerryJuicerIntroText:
	text "Hello Trainer,"

	para "Yes, I can make"
	line "rare Berry Juices"

	para "Have you brought"
	line "me any berries?"
	done

BerryJuicerNoText:
	text "Useless child."

	para "Come back with"
	line "berries!"
	done

BerryJuicerPackisFullText:
	text "Foolish Child!"

	para "Your bag is full"
	line "you'll get juice"
	cont "everywhere!"
	done

BerryJuicerPatienceChildText:
	text "My work takes"
	line "time child!"

	para "You go for walk."
	line "read a book."
	done

BerryJuicerBJuiceText:
	text "Sure, I can"
	line "work with this."

	para "I can make some"
	line "fresh BERRY"
	cont "JUICE with that!"

	para "It will cost you"
	line "¥1000."
	done

BerryJuicerSJuiceText:
	text "Excellent, these"
	line "berries are"

	para "wonderful. It'll"
	line "make my special"

	para "MOON BERRY"
	line "JUICE!"

	para "It will cost you"
	line "¥2000."
	done

BerryJuicerGJuiceText:
	text "Incredible! With"
	line "this, I can make"

	para "you something,"
	line "that's truly"

	para "special! SUN"
	line "BERRY JUICE!"

	para "Juice from the"
	line "gods themselves!"

	para "It will cost you"
	line "¥4000."
	done

BerryJuicerGiveText:
	text "Leave this with"
	line "me, just now."

	para "<PLAYER> handed"
	line "over the berry."
	done


JuicerBText:
	text "You're back just"
	line "in time!"

	para "Here's your"
	line "BERRY JUICE as"
	cont "promised."
	done

JuicerSText:
	text "You're back just"
	line "in time!"

	para "Here's your"
	line "MOON BERRY JUICE"
	cont "as promised."
	done

JuicerGText:
	text "You're back just"
	line "in time!"

	para "Here's your"
	line "SUN BERRY JUICE"
	cont "as promised."
	done

BerryJuicerQuitWastingtime:
	text "Quit wasting my"
	line "time! You useless"
	cont "child!"
	done

NoMoneyChildText:
	text "Do you think I"
	line "run a charity!?"

	para "Come back with"
	line "money, or do not"
	cont "come back at all!"
	done

PokeSeersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 7
	warp_event  3,  7, CIANWOOD_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BerryJuicerScript, -1
	object_event  3,  3, SPRITE_SHUCKLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LakeofRageShuckle, -1