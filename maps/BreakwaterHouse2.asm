	object_const_def
	const GREENHOUSE_CARETAKER
	const GREENHOUSE_CLEFAIRY

BreakwaterHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

GreenHouseCaretaker:
	jumptextfaceplayer GreenHouseCaretakerText

GreenHouseClefairy:
	cry CLEFAIRY
	pause 15
	jumptext GreenHouseClefairyText

GreenHouseCaretakerText:
	text "GREEN isn't home"
	line "right now."

	para "She's always been"
	line "the adventurous"
	cont "sort. I don't"
	cont "think she can"
	cont "stay in one place"
	cont "for very long!"

	para "She's become quite"
	line "the TRAINER, too."

	para "I hear she's been"
	line "challenging some"
	cont "very powerful"
	cont "opponents lately."

	para "I just wish she'd"
	line "remember to visit"
	cont "once in a while!"
	done

GreenHouseClefairyText:
	text "CLEFAIRY is"
	line "playing with"
	cont "something on the"
	cont "floor."

	para "It looks like a"
	line "small, well-worn"
	cont "TRAINER'S BADGE."

	para "CLEFAIRY looks"
	line "very proud of it!"
	done

BreakwaterHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BREAKWATER_ISLE, 5
	warp_event  3,  7, BREAKWATER_ISLE, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GreenHouseCaretaker, -1
	object_event  5,  1, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GreenHouseClefairy, -1
