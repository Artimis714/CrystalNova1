	object_const_def
	const VERMILIONMART_CLERK
	const VERMILIONMART_SUPER_NERD
	const VERMILIONMART_BEAUTY
	const VERMILIONMART_CANDYSHOP

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMartClerkScript:
	opentext
	checkevent EVENT_VERMILION_ALERT
	iftrue .NoServiceToday
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

.NoServiceToday:
	checkitem KANTO_PAPERS
	iftrue .SorryAboutThat
	farwritetext MartUnderLockDown
	waitbutton
	closetext
	end

.SorryAboutThat:
	clearevent EVENT_VERMILION_ALERT
	setevent EVENT_BEAT_CITY_POLICE_VERMILION
	farwritetext MyConcernWasMisplaced
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

VermilionMartCandy:
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

VermilionMartSuperNerdScript:
	jumptextfaceplayer VermilionMartSuperNerdText

VermilionMartBeautyScript:
	faceplayer
	opentext
	checkevent EVENT_CANDY_SHOP
	iffalse .CandyShop
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .CandyShopSoon
	writetext VermilionMartBeautyText
	waitbutton
	closetext
	end

.CandyShop:
	writetext CandyShopText
	waitbutton 
	closetext
	end

.CandyShopSoon:
	writetext CandyShopSoonText
	waitbutton
	closetext
	end

VermilionMartSuperNerdText:
	text "TEAM ROCKET is no"
	line "longer in KANTO."

	para "That alone makes"
	line "me happy."

	para "We finally got"
	line "rid of that JOHTO"
	cont "scum!"
	done

CandyShopText:
	text "I'm so glad Susie"
	line "Q has opened up a"
	cont "candy shop!"
	done

CandyShopSoonText:
	text "A candy shop is"
	line "opening soon!"
	done

VermilionMartBeautyText:
	text "I'm thinking about"
	line "going shopping in"
	cont "CELADON."

	para "Their selection is"
	line "much better."
	done

VermilionMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMartClerkScript, EVENT_BLUE_IN_CINNABAR
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMartSuperNerdScript, EVENT_BLUE_IN_CINNABAR
	object_event  8,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMartBeautyScript, -1
	object_event  1,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMartCandy, EVENT_CANDY_SHOP
