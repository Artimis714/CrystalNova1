	object_const_def
	const BREAKHOUSE1_WOMAN
	const BREAKHOUSE1_MAN

BreakwaterHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

BreakHouse1Woman:
	jumptextfaceplayer BreakHouse1WomanText

BreakHouse1Man:
	jumptextfaceplayer BreakHouse1ManText

BreakHouse1WomanText:
	text "We used to have a"
	line "little house in"
	cont "CINNABAR."

	para "It wasn't much,"
	line "but it was ours."

	para "I suppose we"
	line "should consider"
	cont "ourselves lucky"
	cont "to have somewhere"
	cont "to live at all."
	done

BreakHouse1ManText:
	text "I've been helping"
	line "repair some of"
	cont "the buildings"
	cont "around town."

	para "There's always"
	line "something that"
	cont "needs fixing."

	para "It's not the life"
	line "I imagined, but"
	cont "at least I'm"
	cont "useful."
	done

BreakwaterHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BREAKWATER_ISLE, 4
	warp_event  3,  7, BREAKWATER_ISLE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakHouse1Woman, -1
	object_event  5,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BreakHouse1Man, -1
