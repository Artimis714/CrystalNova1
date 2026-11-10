DEF CITRINECASINO_BERRY_JUICE_COINS    EQU 50
DEF CITRINECASINO_SILVER_B_JUICE_COINS EQU 100
DEF CITRINECASINO_GOLD_B_JUICE_COINS   EQU 200
DEF CITRINECASINO_EEVEE_COINS          EQU 700
DEF CITRINECASINO_TYROGUE_COINS        EQU 1200
DEF CITRINECASINO_DRATINI_COINS        EQU 2100

	object_const_def
	const CASINO_GENTLEMAN1
	const CASINO_LASS
	const CASINO_YOUNGSTER1
	const CASINO_POKEFAN
	const CASINO_BEAUTY
	const CASINO_YOUNGSTER2
	const CASINO_GENTLEMAN2
	const CASINO_CLERK
	const CASINO_RECEPTIONIST1
	const CASINO_RECEPTIONIST2

CitrineGameCorner_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineCasinoCoinVendorScript:
	jumpstd GameCornerCoinVendorScript


CitrineCasinoTMVendorScript:
	faceplayer
	opentext
	writetext CitrineCasinoPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CitrineCasinoPrizeVendor_NoCoinCaseScript
	writetext CitrineCasinoPrizeVendorWhichPrizeText
.loop
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .BerryJuice
	ifequal 2, .SilverBJuice
	ifequal 3, .GoldBJuice
	sjump CitrineCasinoPrizeVendor_CancelPurchaseScript

.BerryJuice:
	checkcoins CITRINECASINO_BERRY_JUICE_COINS
	ifequal HAVE_LESS, CitrineCasinoPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, BERRY_JUICE
	scall CitrineCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse CitrineCasinoPrizeVendor_CancelPurchaseScript
	giveitem BERRY_JUICE
	iffalse CitrineCasinoPrizeVendor_NoRoomScript
	takecoins CITRINECASINO_BERRY_JUICE_COINS
	sjump .Finish

.SilverBJuice:
	checkcoins CITRINECASINO_SILVER_B_JUICE_COINS
	ifequal HAVE_LESS, CitrineCasinoPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, SLVR_B_JUICE
	scall CitrineCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse CitrineCasinoPrizeVendor_CancelPurchaseScript
	giveitem SLVR_B_JUICE
	iffalse CitrineCasinoPrizeVendor_NoRoomScript
	takecoins CITRINECASINO_SILVER_B_JUICE_COINS
	sjump .Finish

.GoldBJuice:
	checkcoins CITRINECASINO_GOLD_B_JUICE_COINS
	ifequal HAVE_LESS, CitrineCasinoPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, GOLD_B_JUICE
	scall CitrineCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse CitrineCasinoPrizeVendor_CancelPurchaseScript
	giveitem GOLD_B_JUICE
	iffalse CitrineCasinoPrizeVendor_NoRoomScript
	takecoins CITRINECASINO_GOLD_B_JUICE_COINS
	sjump .Finish

.Finish:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CitrineCasinoPrizeVendorHereYouGoText
	waitbutton
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 18, TEXTBOX_Y - 1
	dw .MenuData
	db 1

.MenuData:
	db STATICMENU_CURSOR
	db 4
	db " BERRY JUICE {d:CITRINECASINO_BERRY_JUICE_COINS}@"
	db "SLVR B JUICE {d:CITRINECASINO_SILVER_B_JUICE_COINS}@"
	db "GOLD B JUICE {d:CITRINECASINO_GOLD_B_JUICE_COINS}@"
	db "CANCEL@"

CitrineCasinoPrizeMonVendorScript:
	faceplayer
	opentext
	writetext CitrineCasinoPrizeVendorIntroText2
	waitbutton
	checkitem COIN_CASE
	iffalse CitrineCasinoPrizeVendor_NoCoinCaseScript
.loop
	writetext CitrineCasinoPrizeVendorWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Eevee
	ifequal 2, .Tyrogue
	ifequal 3, .Dratini
	sjump CitrineCasinoPrizeVendor_CancelPurchaseScript

.Eevee:
	checkcoins CITRINECASINO_EEVEE_COINS
	ifequal HAVE_LESS, CitrineCasinoPrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CitrineCasinoPrizeVendor_NoRoomScript
	getmonname STRING_BUFFER_3, EEVEE
	scall CitrineCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse CitrineCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CitrineCasinoPrizeVendorHereYouGoText
	waitbutton
	setval EEVEE
	special GameCornerPrizeMonCheckDex
	givepoke EEVEE, 5
	takecoins CITRINECASINO_EEVEE_COINS
	sjump .loop

.Tyrogue:
	checkcoins CITRINECASINO_TYROGUE_COINS
	ifequal HAVE_LESS, CitrineCasinoPrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CitrineCasinoPrizeVendor_NoRoomScript
	getmonname STRING_BUFFER_3, TYROGUE
	scall CitrineCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse CitrineCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CitrineCasinoPrizeVendorHereYouGoText
	waitbutton
	setval TYROGUE
	special GameCornerPrizeMonCheckDex
	givepoke TYROGUE, 5
	takecoins CITRINECASINO_TYROGUE_COINS
	sjump .loop

.Dratini:
	checkcoins CITRINECASINO_DRATINI_COINS
	ifequal HAVE_LESS, CitrineCasinoPrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CitrineCasinoPrizeVendor_NoRoomScript
	getmonname STRING_BUFFER_3, DRATINI
	scall CitrineCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse CitrineCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CitrineCasinoPrizeVendorHereYouGoText
	waitbutton
	setval DRATINI
	special GameCornerPrizeMonCheckDex
	givepoke DRATINI, 5
	takecoins CITRINECASINO_DRATINI_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1

.MenuData:
	db STATICMENU_CURSOR
	db 4
	db "EEVEE    {d:CITRINECASINO_EEVEE_COINS}@"
	db "TYROGUE  {d:CITRINECASINO_TYROGUE_COINS}@"
	db "DRATINI  {d:CITRINECASINO_DRATINI_COINS}@"
	db "CANCEL@"

CitrineCasinoPrizeVendor_ConfirmPurchaseScript:
	writetext CitrineCasinoPrizeVendorConfirmPurchaseText
	yesorno
	end

CitrineCasinoPrizeVendor_NotEnoughCoinsScript:
	writetext CitrineCasinoPrizeVendorNotEnoughCoinsText
	waitbutton
	closetext
	end

CitrineCasinoPrizeVendor_NoRoomScript:
	writetext CitrineCasinoPrizeVendorNoRoomText
	waitbutton
	closetext
	end

CitrineCasinoPrizeVendor_CancelPurchaseScript:
	writetext CitrineCasinoPrizeVendorComeAgainText
	waitbutton
	closetext
	end

CitrineCasinoPrizeVendor_NoCoinCaseScript:
	writetext CitrineCasinoPrizeVendorNoCoinCaseText
	waitbutton
	closetext
	end

CitrineGameCornerNPC1:
	jumptextfaceplayer CitrineGameCornerNPC1Text

CitrineGameCornerNPC2:
	jumptextfaceplayer CitrineGameCornerNPC2Text

CitrineGameCornerNPC3:
	jumptextfaceplayer CitrineGameCornerNPC3Text

CitrineGameCornerNPC4:
	jumptextfaceplayer CitrineGameCornerNPC4Text

CitrineGameCornerNPC5:
	jumptextfaceplayer CitrineGameCornerNPC5Text

CitrineGameCornerNPC6:
	jumptextfaceplayer CitrineGameCornerNPC6Text

CitrineGameCornerNPC7:
	jumptextfaceplayer CitrineGameCornerNPC7Text

CitrineCasinoPrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for fine"
	cont "refreshments!"
	done

CitrineCasinoPrizeVendorIntroText2:
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

CitrineCasinoPrizeVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

CitrineCasinoPrizeVendorConfirmPurchaseText:
	text "OK, so you wanted"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

CitrineCasinoPrizeVendorHereYouGoText:
	text "Here you go!"
	done

CitrineCasinoPrizeVendorNotEnoughCoinsText:
	text "You don't have"
	line "enough coins."
	done

CitrineCasinoPrizeVendorNoRoomText:
	text "You have no room"
	line "for it."
	done

CitrineCasinoPrizeVendorComeAgainText:
	text "Oh. Please come"
	line "back with coins!"
	done

CitrineCasinoPrizeVendorNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

CitrineCasinoSlotsMachineScript:
	random 6
	ifequal 0, CitrineCasinoLuckySlotsMachineScript
	refreshscreen
	setval FALSE
	special SlotMachine
	closetext
	end

CitrineCasinoLuckySlotsMachineScript:
	refreshscreen
	setval TRUE
	special SlotMachine
	closetext
	end

CitrineCasinoCardFlipMachineScript:
	refreshscreen
	special CardFlip
	closetext
	end

CitrineGameCornerNPC7Text:
	text "I've visited a"
	line "lot of GAME"
	cont "CORNERS in my"
	cont "travels."

	para "This one's got"
	line "a particularly"
	cont "nice atmosphere."

	para "I might stay"
	line "a little longer."
	done

CitrineGameCornerNPC6Text:
	text "My friends and I"
	line "come here after"
	cont "school sometimes."

	para "We're not very"
	line "good at winning,"
	cont "but we have fun"
	cont "trying!"
	done

CitrineGameCornerNPC1Text:
	text "I don't usually"
	line "gamble, but I"
	cont "like to come here"
	cont "and watch."

	para "Some people get"
	line "so excited when"
	cont "they win!"
	done

CitrineGameCornerNPC2Text:
	text "I came all the"
	line "way from JOHTO"
	cont "to visit."

	para "I didn't expect"
	line "to spend so much"
	cont "time in a GAME"
	cont "CORNER!"
	done

CitrineGameCornerNPC3Text:
	text "I've got a lucky"
	line "routine."

	para "Three tries on"
	line "one machine, then"
	cont "I move to the"
	cont "next one."

	para "It hasn't worked"
	line "yet, but I have"
	cont "faith!"
	done

CitrineGameCornerNPC4Text:
	text "My husband says"
	line "I spend too much"
	cont "time here."

	para "I say he spends"
	line "too much time"
	cont "watching TV!"

	para "At least we're"
	line "both enjoying"
	cont "ourselves."
	done

CitrineGameCornerNPC5Text:
	text "The music in"
	line "here is so catchy!"

	para "I came in just"
	line "to have a look,"
	cont "but now I can't"
	cont "get the tune out"
	cont "of my head!"
	done

CitrineGameCorner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, CITRINE_CITY, 14
	warp_event  3, 13, CITRINE_CITY, 14

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, CitrineCasinoSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, CitrineCasinoLuckySlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, CitrineCasinoSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event 12,  9, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, CitrineCasinoSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, CitrineCasinoSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 13,  7, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, CitrineCasinoCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 18,  7, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 18,  8, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 18,  9, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 18, 10, BGEVENT_READ, CitrineCasinoCardFlipMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, CitrineCasinoCardFlipMachineScript

	def_object_events
	object_event  5,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC1, -1
	object_event  8, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC2, -1
	object_event 11,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC3, -1
	object_event 14, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC4, -1
	object_event 17,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC5, -1
	object_event 10, 3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC6, -1
	object_event  2, 9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrineGameCornerNPC7, -1
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineCasinoCoinVendorScript, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineCasinoTMVendorScript, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineCasinoPrizeMonVendorScript, -1
