	object_const_def
	const CH4_SCIENTIST
	const CH4_NERD

CitrineHouse4_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineHouse4Scientist:
	jumptextfaceplayer CitrineHouse4ScientistText

CitrineHouse4SuperNerd:
	jumptextfaceplayer CitrineHouse4SuperNerdText

CitrineHouse4ScientistText:
	text "I've been studying"
	line "the old TANOBY"
	cont "RUINS for years."

	para "There are still"
	line "so many unanswered"
	cont "questions about"
	cont "the people who"
	cont "built them."

	para "I'm hoping to"
	line "organize another"
	cont "expedition soon."

	para "MOSS ISLE and"
	line "BREAKWATER ISLE"
	cont "are particularly"
	cont "interesting."

	para "I'm convinced"
	line "there are ruins"
	cont "out there that"
	cont "we haven't found"
	cont "yet!"
	done

CitrineHouse4SuperNerdText:
	text "I just got back"
	line "from JOHTO."

	para "I spent weeks"
	line "investigating the"
	cont "RUINS OF ALPH."

	para "The place is"
	line "fascinating, but"
	cont "I didn't find"
	cont "anything that"
	cont "hasn't already"
	cont "been documented."

	para "Everyone seems"
	line "to think JOHTO's"
	cont "ancient history"
	cont "is so remarkable."

	para "Personally, I"
	line "think they ought"
	cont "to take a closer"
	cont "look at what we"
	cont "have right here"
	cont "in the SEVII!"
	done

CitrineHouse4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 11
	warp_event  3,  7, CITRINE_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineHouse4Scientist, -1
	object_event  5, 4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineHouse4SuperNerd, -1
