	object_const_def
	const CH2_YOUNGSTER
	const CH2_GRANNY

CitrineHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineHouse2Youngster:
	jumptextfaceplayer CitrineHouse2YoungsterText

CitrineHouse2Granny:
	jumptextfaceplayer CitrineHouse2GrannyText

CitrineHouse2YoungsterText:
	text "I've been visiting"
	line "the CASINO every"
	cont "evening lately."

	para "I think I've"
	line "finally figured"
	cont "out how to beat"
	cont "the machines!"

	para "You just have to"
	line "know when they're"
	cont "about to pay out."

	para "I've only lost"
	line "a little money"
	cont "figuring it out."
	done

CitrineHouse2GrannyText:
	text "That boy spends"
	line "far too much time"
	cont "at the CASINO."

	para "He says he's"
	line "working on a"
	cont "system."

	para "His father had"
	line "a system too."

	para "So did his"
	line "grandfather."

	para "Funny how none"
	line "of them ever"
	cont "seemed to work!"
	done

CitrineHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 9
	warp_event  3,  7, CITRINE_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CitrineHouse2Youngster, -1
	object_event  5, 4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineHouse2Granny, -1
