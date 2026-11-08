	object_const_def
	const CH1_GRAMPS
	const CH1_GRANNY

CitrineHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineHouse1Gentleman:
	jumptextfaceplayer CitrineHouse1GentlemanText

CitrineHouse1Granny:
	jumptextfaceplayer CitrineHouse1GrannyText

CitrineHouse1GentlemanText:
	text "CITRINE CITY..."
	line "Quite a place to"
	cont "settle down."

	para "I spent most of my"
	line "life moving from"
	cont "one posting to"
	cont "another."

	para "Funny thing is,"
	line "now that the war's"
	cont "over, I sometimes"
	cont "miss those days."

	para "Not the fighting,"
	line "mind you. Just the"
	cont "people I served"
	cont "alongside."

	para "I wonder where"
	line "some of them are"
	cont "now..."
	done

CitrineHouse1GrannyText:
	text "He's much easier"
	line "to live with now"
	cont "that he's retired."

	para "Although sometimes"
	line "he still stands"
	cont "at the window and"
	cont "watches the street"
	cont "like he's guarding"
	cont "a military post!"

	para "Old habits die"
	line "hard, I suppose."
	done

CitrineHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 8
	warp_event  3,  7, CITRINE_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrineHouse1Gentleman, -1
	object_event  5, 4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineHouse1Granny, -1