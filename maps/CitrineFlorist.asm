	object_const_def
	const VERMILIONMART_CANDYSHOP

CitrineFlorist_MapScripts:
	def_scene_scripts

	def_callbacks

SusieQScript:
	faceplayer
	opentext
	farwritetext SusieQIntroText
.Loop:
	loadmenu .ExchangeMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Gold5
	ifequal 2, .Gold4
	ifequal 3, .Gold3
	ifequal 4, .SilverPage
	sjump .Cancel

.SilverPage:
	loadmenu .SilverMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Silver5
	ifequal 2, .Silver4
	ifequal 3, .Silver3
	sjump .Cancel

.Gold5:
	setval GOLD_LEAF
	writemem wCurItem
	setval 5
	writemem wItemQuantity
	special SusieQCheckLeafQuantity
	iffalse .NotEnoughGold
	giveitem RARE_CANDY, 15
	iffalse .PackFull
	takeitem GOLD_LEAF, 5
	sjump .Success

.Gold4:
	setval GOLD_LEAF
	writemem wCurItem
	setval 4
	writemem wItemQuantity
	special SusieQCheckLeafQuantity
	iffalse .NotEnoughGold
	giveitem RARE_CANDY, 12
	iffalse .PackFull
	takeitem GOLD_LEAF, 4
	sjump .Success

.Gold3:
	setval GOLD_LEAF
	writemem wCurItem
	setval 3
	writemem wItemQuantity
	special SusieQCheckLeafQuantity
	iffalse .NotEnoughGold
	giveitem RARE_CANDY, 9
	iffalse .PackFull
	takeitem GOLD_LEAF, 3
	sjump .Success

.Silver5:
	setval SILVER_LEAF
	writemem wCurItem
	setval 5
	writemem wItemQuantity
	special SusieQCheckLeafQuantity
	iffalse .NotEnoughSilver
	giveitem RARE_CANDY, 5
	iffalse .PackFull
	takeitem SILVER_LEAF, 5
	sjump .Success

.Silver4:
	setval SILVER_LEAF
	writemem wCurItem
	setval 4
	writemem wItemQuantity
	special SusieQCheckLeafQuantity
	iffalse .NotEnoughSilver
	giveitem RARE_CANDY, 4
	iffalse .PackFull
	takeitem SILVER_LEAF, 4
	sjump .Success

.Silver3:
	setval SILVER_LEAF
	writemem wCurItem
	setval 3
	writemem wItemQuantity
	special SusieQCheckLeafQuantity
	iffalse .NotEnoughSilver
	giveitem RARE_CANDY, 3
	iffalse .PackFull
	takeitem SILVER_LEAF, 3
	sjump .Success

.NotEnoughGold:
	checkitem GOLD_LEAF
	iffalse .NoGold
	farwritetext SusieQNotEnoughGoldText
	waitbutton
	sjump .Loop

.NotEnoughSilver:
	checkitem SILVER_LEAF
	iffalse .NoSilver
	farwritetext SusieQNotEnoughSilverText
	waitbutton
	sjump .SilverPage

.NoGold:
	farwritetext NoGoldLeafText
	waitbutton
	sjump .Loop

.NoSilver:
	farwritetext NoSilverLeafText
	waitbutton
	sjump .SilverPage

.PackFull:
	farwritetext SusieQPackFullText
	waitbutton
	closetext
	end

.Success:
	playsound SFX_TRANSACTION
	farwritetext SusieQExchangeSuccessText
	waitbutton
	sjump .Loop

.Cancel:
	closetext
	end

.ExchangeMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 19, 10
	dw .GoldMenuData
	db 1 ; default option

.GoldMenuData:
	db STATICMENU_CURSOR
	db 4 ; number of items
	db "5 Gold: 15 Candy@"
	db "4 Gold: 12 Candy@"
	db "3 Gold: 9 Candy@"
	db "Next Page@"

.SilverMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 19, 10
	dw .SilverMenuData
	db 1 ; default option

.SilverMenuData:
	db STATICMENU_CURSOR
	db 4 ; number of items
	db "5 Slvr: 5 Candy@"
	db "4 Slvr: 4 Candy@"
	db "3 Slvr: 3 Candy@"
	db "Cancel@"

CitrineFlorist_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 7
	warp_event  3,  7, CITRINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SusieQScript, -1