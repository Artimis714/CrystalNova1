	object_const_def
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3
	const SILVERCAVEROOM2_BROCK
	const SILVERCAVEROOM2_MISTY
	const SILVERCAVEROOM2_SURGE
	const SILVERCAVEROOM2_JANINE
	const SILVERCAVEROOM2_ERIKA
	const SILVERCAVEROOM2_BLAINE
	const SILVERVAVEROOM2_SABRINA
	const SILVERCAVEROOM2_BLUE

SilverCaveRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveBrock:
	trainer BROCK, BROCK2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, SilverBrockSeenText, SilverBrockBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBrockAfterBattleText
	waitbutton
	closetext
	end

SilverCaveMisty:
	trainer MISTY, MISTY2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2, SilverMistySeenText, SilverMistyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverMistyAfterBattleText
	waitbutton
	closetext
	end

SilverCaveSurge:
	trainer LT_SURGE, LT_SURGE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3, SilverSurgeSeenText, SilverSurgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverSurgeAfterBattleText
	waitbutton
	closetext
	end

SilverCaveJanine:
	trainer JANINE, JANINE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4, SilverJanineSeenText, SilverJanineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverJanineAfterBattleText
	waitbutton
	closetext
	end

SilverCaveErika:
	trainer ERIKA, ERIKA2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, SilverErikaSeenText, SilverErikaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverErikaAfterBattleText
	waitbutton
	closetext
	end

SilverCaveBlaine:
	trainer BLAINE, BLAINE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, SilverBlaineSeenText, SilverBlaineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBlaineAfterBattleText
	waitbutton
	closetext
	end

SilverCaveSabrina:
	trainer SABRINA, SABRINA2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, SilverSabrinaSeenText, SilverSabrinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverSabrinaAfterBattleText
	waitbutton
	closetext
	end

SilverCaveBlue:
	trainer BLUE, BLUE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, SilverBlueSeenText, SilverBlueBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBlueAfterBattleText
	waitbutton
	closetext
	end

SilverCaveRoom2Calcium:
	itemball CALCIUM

SilverCaveRoom2UltraBall:
	itemball PROTEIN

SilverCaveRoom2PPUp:
	itemball PP_UP, 2

SilverCaveRoom2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION

SilverBrockSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverBrockBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverBrockAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverMistySeenText:
	text "Test"
	line "anything comes up!"
	done

SilverMistyBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverMistyAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverSurgeSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverSurgeBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverSurgeAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverJanineSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverJanineBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverJanineAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverErikaSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverErikaBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverErikaAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverBlaineSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverBlaineBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverBlaineAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverSabrinaSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverSabrinaBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverSabrinaAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverBlueSeenText:
	text "Test"
	line "anything comes up!"
	done

SilverBlueBeatenText:
	text "Test"
	line "anything comes up!"
	done

SilverBlueAfterBattleText:
	text "Test"
	line "anything comes up!"
	done

SilverCaveRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 31, SILVER_CAVE_ROOM_1, 2
	warp_event 11,  5, SILVER_CAVE_ROOM_3, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	def_coord_events

	def_bg_events
	bg_event 14, 31, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxPotion

	def_object_events
	object_event 24, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	object_event 22, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP
	object_event 17, 28, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, SilverCaveBrock, EVENT_FINAL_GAUNTLET
	object_event 20, 26, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, SilverCaveMisty, EVENT_FINAL_GAUNTLET
	object_event 20, 24, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, SilverCaveSurge, EVENT_FINAL_GAUNTLET
	object_event 20, 22, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, SilverCaveJanine, EVENT_FINAL_GAUNTLET
	object_event 14, 16, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, SilverCaveErika, EVENT_FINAL_GAUNTLET
	object_event 10, 14, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, SilverCaveBlaine, EVENT_FINAL_GAUNTLET
	object_event  6, 13, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, SilverCaveSabrina, EVENT_FINAL_GAUNTLET
	object_event 14,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, SilverCaveBlue, EVENT_FINAL_GAUNTLET
